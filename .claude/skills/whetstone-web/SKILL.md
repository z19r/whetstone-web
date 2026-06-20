```markdown
# whetstone-web Development Patterns

> Auto-generated skill from repository analysis

## Overview
This skill teaches the core development patterns and conventions used in the `whetstone-web` JavaScript codebase. You'll learn about file naming, import/export styles, commit message conventions, and how to write and run tests. While no frameworks or automated workflows were detected, this guide provides best practices for contributing to and maintaining the repository.

## Coding Conventions

### File Naming
- Use **camelCase** for file names.
  - Example: `userProfile.js`, `dataFetcher.js`

### Import Style
- Use **relative imports** for modules within the project.
  - Example:
    ```javascript
    import { fetchData } from './dataFetcher';
    ```

### Export Style
- Use **named exports** rather than default exports.
  - Example:
    ```javascript
    // In dataFetcher.js
    export function fetchData() { ... }

    // In another file
    import { fetchData } from './dataFetcher';
    ```

### Commit Messages
- Follow **conventional commit** style.
- Use the `fix` prefix for bug fixes.
  - Example:
    ```
    fix: correct user profile loading error
    ```

## Workflows

_No automated workflows were detected in this repository._

## Testing Patterns

- Test files follow the `*.test.*` naming pattern.
  - Example: `userProfile.test.js`
- The testing framework is **unknown**; check existing test files for specifics.
- To write a test:
  1. Create a new file with `.test.js` extension alongside the file being tested.
  2. Use the same import/export conventions as production code.
  3. Follow the structure of existing test files for consistency.

  Example:
  ```javascript
  import { fetchData } from './dataFetcher';

  test('fetchData returns expected result', () => {
    // test implementation here
  });
  ```

## Commands
| Command        | Purpose                                   |
|----------------|-------------------------------------------|
| /run-tests     | Run all test files matching `*.test.*`     |
| /lint          | Check code for style and syntax issues     |
| /commit-fix    | Commit a fix using conventional message    |
| /new-module    | Scaffold a new module with conventions     |
```
