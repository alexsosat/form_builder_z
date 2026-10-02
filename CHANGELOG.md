## 1.0.0

* Add opt-in `Field.currency(showCalculator: true)` calculator input through
  `flutter_simple_calculator`. Apply local calculations on Done, support
  clearing and cancellation, and retain locale formatting and typed amounts.
* Restore missing Spanish localization placeholders so `intl_utils:generate`
  can generate every locale. Export the localization API without conflicting
  generated message lookup classes.
* Add opt-in `FormWidget` subclasses with declarative `fields()` and typed
  `Field` factories for text, email, password, multiline text, numbers,
  checkboxes, dates, date ranges, dropdowns, and custom controls.
* Generate rows from nested field lists and embed ordinary content with
  `Field.widget()`. Support spacing, headers, footers, and custom layouts.
* Keep values current through existing `save()` overrides; share model
  validators and report conversion errors through widget validation.
* Add conditional `hidden` and `readOnly` flags. Retain hidden field state and
  values while skipping hidden widget validation; rebuild dependent fields after
  edits and resize rows without leaving gaps.
* Support typed model access through `FormWidget<T extends FormEntity>`.
* Add opt-in `Field.password(viewable: true)` visibility toggling. Preserve field
  state and values without save callbacks; replace the decoration's suffix icon
  while enabled.
* Cover the Nylo field catalog with currency, capitalization variants, URLs,
  phone numbers, masks, pickers, radios, switches, multi-select chips, sliders,
  range sliders, and a custom-control alias.
* Add caller-supplied text input formatters and reusable `FormInputFormatters`
  helpers. Use Nylo's phone and mask formatter dependencies; retain typed
  currency amounts and support raw or displayed mask values.
* Add typed `dummyValue` declarations for debug-only autofill. Populate pure,
  empty inputs once per model using its existing `save()`; preserve existing
  values and user edits. Support `useDummyValues: false` and re-evaluate
  conditional visibility after initialization. Profile and release builds never
  apply dummy values.
* Add change and validation-failure callbacks, asynchronous submission, and a
  package entrypoint. Existing model classes and import paths remain unchanged.

## 0.0.1

* TODO: Describe initial release.
