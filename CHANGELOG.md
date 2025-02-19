# Changelog

## 1.0.2

- Add `differsFromNow` to the `AcanthisDate` validator.
- Add `double` and `between` to the `AcanthisNumber` validator.
- Add `time`, `url`, `card` and `hexColor` to the `AcanthisString` validator.

## 1.0.1

- Add `lazy` validator to allow for recursive schemas.

## 1.0.0

- Upgrade dependencies.
- Add async checks for all validators to allow for a more flexible validation process.
- Add `partial` validator to object validator.
- Add more String validators.
- Rename `customCheck` to `refine` in all validators.
- Add `refineAsync` to all validators.
- Add `pipe` and  `AcanthisPipeline` to allow for more complex validation and transformation processes.

## 0.1.3

### Features

- Add the `optionals` function to the `object` validator.

### Docs

- Add information about `optionals` in the `object` validator.

## 0.1.2

- Add the `addFieldDependency` function to the `object` validator.
- Add information about `addFieldDependency` in the `object` validator.
- Remove the `Operations` section from the documentation.

## 0.1.1

### Refactor

- The function `jsonObject` has been renamed as `object`.
- Add explicit information about the parse result object `AcanthisParseResult`.

## 0.1.0

- Add the `nullable` validator.
- Add the `union` validator.
- Add the `boolean` validator.
- Add transformation functions for all the validators except `nullable`, `boolean` and `union`.
- Add tests for all the validators (100% coverage 🎉).
- Add documentation for all the validators.
- [#1] Fix the `string().email()` validator that will now use the `email_validator` package.

## 0.0.1

- Initial version.
