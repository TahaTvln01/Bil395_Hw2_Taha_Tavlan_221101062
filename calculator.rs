// Taha Tavlan 221101062

use std::collections::HashMap;
use std::io::{self, Write};

fn eval_expression(expr: &str, vars: &mut HashMap<String, f64>) -> Result<f64, String> {
    let tokens: Vec<&str> = expr.split_whitespace().collect();
    if tokens.is_empty() {
        return Err("Empty expression".to_string());
    }

    if tokens.len() == 3 && tokens[1] == "=" {
        // Variable assignment (e.g., x = 5)
        let value = tokens[2].parse::<f64>().map_err(|_| "Invalid number")?;
        vars.insert(tokens[0].to_string(), value);
        return Ok(value);
    }

    let mut stack: Vec<f64> = Vec::new();
    for token in tokens {
        match token {
            "+" => {
                let (b, a) = (stack.pop().ok_or("Missing operand")?, stack.pop().ok_or("Missing operand")?);
                stack.push(a + b);
            }
            "-" => {
                let (b, a) = (stack.pop().ok_or("Missing operand")?, stack.pop().ok_or("Missing operand")?);
                stack.push(a - b);
            }
            "*" => {
                let (b, a) = (stack.pop().ok_or("Missing operand")?, stack.pop().ok_or("Missing operand")?);
                stack.push(a * b);
            }
            "/" => {
                let (b, a) = (stack.pop().ok_or("Missing operand")?, stack.pop().ok_or("Missing operand")?);
                if b == 0.0 {
                    return Err("Division by zero".to_string());
                }
                stack.push(a / b);
            }
            _ => {
                if let Ok(num) = token.parse::<f64>() {
                    stack.push(num);
                } else if let Some(&val) = vars.get(token) {
                    stack.push(val);
                } else {
                    return Err(format!("Unknown token: {}", token));
                }
            }
        }
    }
    
    stack.pop().ok_or("Invalid expression".to_string())
}

fn main() {
    let mut vars: HashMap<String, f64> = HashMap::new();
    println!("Rust Calculator. Type 'exit' to quit");
    
    loop {
        print!("> ");
        io::stdout().flush().unwrap();
        
        let mut input = String::new();
        io::stdin().read_line(&mut input).unwrap();
        let input = input.trim();
        
        if input == "exit" {
            break;
        }
        
        match eval_expression(input, &mut vars) {
            Ok(result) => println!("Result: {}", result),
            Err(err) => println!("Error: {}", err),
        }
    }
}
