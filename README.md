# XSS PAYLOAD

XSS PAYLOAD is a simple shell tool developed to test Cross-Site Scripting (XSS) vulnerabilities on websites. This tool is useful for information security professionals, security researchers, and ethical hacking enthusiasts who want to identify and exploit XSS vulnerabilities in their web applications.

## How It Works

XSS PAYLOAD uses a list of known payloads to exploit XSS vulnerabilities. It injects these payloads into URL parameters and checks if the web application is vulnerable to XSS based on server responses.

## How to Use

1. Clone the repository to your local environment:

```bash
git clone https://github.com/untw0/xss-scan
```

2. Navigate to the project directory:

```bash
cd xss-scan
```

3. Ensure that the `xss.txt` file is present and contains a comprehensive list of XSS payloads.

4. To run the .sh file you will have to do the following:

```bash
chmod +x xsscan.sh
```
 
5. Run the script by providing the URL of the site you want to test:

```bash
./xsscan.sh https://example.com/page?param=
```

## Future Updates

This project is in the testing phase and is subject to ongoing improvements. The following updates are planned:

- Enhancements to XSS detection effectiveness.
- Support for other types of web vulnerabilities.
- Improvements in usability and interface.

Stay tuned for future updates on my social midia Instagram and Twitter: @untw0

## Contributions

Contributions are welcome! If you've found a bug, have a suggestion for improvement, or want to add additional features, feel free to open an issue or send a pull request.
