# claude-client-smalltalk [![ci](https://github.com/newapplesho/claude-client-smalltalk/actions/workflows/ci.yml/badge.svg)](https://github.com/newapplesho/claude-client-smalltalk/actions/workflows/ci.yml)

## ⚠️ Important Disclaimer

**This is an unofficial third-party implementation and is NOT affiliated with, endorsed, or sponsored by Anthropic PBC.**

- This project is an independent Smalltalk client library for accessing the Claude API
- "Claude" and "Anthropic" are trademarks of Anthropic PBC
- No official support is provided by Anthropic PBC
- Use at your own risk and responsibility
- For official SDKs, please visit: https://docs.anthropic.com/en/api/client-sdks

## Installation

```
Metacello new
  baseline: 'Claude';
  repository: 'github://newapplesho/claude-client-smalltalk:main/src';
  load.
```

## Supported Smalltalk Versions

| Name                                 | Smalltalk Version | Version        |
| ------------------------------------ | ----------------- | -------------- |
| [Pharo Smalltalk](http://pharo.org/) | 13.0              | Latest Version |

## Quickstart

```smalltalk
ClaudeConfig default.
ClaudeConfig default apiKey: 'your-api-key'.
client := ClaudeAPIClient new.
conversation := ClaudeConversation new.
conversation addUser: 'What is the capital of Japan?'.
request := ClaudeMessageRequest new.
request model: 'claude-sonnet-4-20250514'.
request maxTokens: 1024.
request messages: conversation.
response := client sendRequest: request.
conversation addAssistant: response text.
Transcript show: response text.
conversation addUser: 'Do you like Tokyo?'.
response := client sendRequest: request.
Transcript show: response text.
```
