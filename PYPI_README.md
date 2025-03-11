# AI Sandbox

A Python package for creating sandboxed environments to safely run AI models and execute AI-generated code with strict security boundaries.

## 🛡️ Security Features

- Restricted file system access (limited to project directory)
- Controlled code execution using RestrictedPython
- Path validation and sanitization
- Process isolation capabilities

## 🚀 Installation

### Using UV (Recommended)

```bash
# Install with UV
uv pip install ai-sandbox

# Or install in development mode
git clone https://github.com/yourusername/ai-sandbox.git
cd ai-sandbox
uv pip install -e .
```

### Using pip

```bash
# Install with pip
pip install ai-sandbox

# Or install in development mode
git clone https://github.com/yourusername/ai-sandbox.git
cd ai-sandbox
pip install -e .
```

## 🧰 Usage Example

```python
from ai_sandbox.security import safe_path_access, SecurityError
from ai_sandbox.executor import execute_ai_code

# Safely access files only within project directory
try:
    file_path = safe_path_access("data/training.json")
    with open(file_path, 'r') as f:
        data = f.read()
except SecurityError as e:
    print(f"Security violation: {e}")

# Safely execute AI-generated code with restrictions
ai_code = """
def analyze_data(input_data):
    return {"summary": "Data analysis complete", "count": len(input_data)}

result = analyze_data(input_data)
"""

result = execute_ai_code(ai_code, {"input_data": [1, 2, 3]})
print(result)  # Output: {"summary": "Data analysis complete", "count": 3}
```

## 🔒 Best Practices

1. **Never** grant AI access to sensitive directories outside the project
2. Use multiple layers of security - no single mechanism is foolproof
3. Implement logging of all AI actions for audit purposes
4. Regularly update dependencies to patch security vulnerabilities

## ⚠️ Limitations

- This sandbox provides basic isolation but is not equivalent to container/VM isolation
- Different security mechanisms are available on different operating systems
- Python's dynamic nature makes 100% secure sandboxing difficult

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.
