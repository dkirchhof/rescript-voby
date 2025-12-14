type command =
  | @as("show-popover") ShowPopover
  | @as("hide-popover") HidePopover
  | @as("toggle-popover") TogglePopover
  | @as("show-modal") ShowModal
  | @as("close") Close

type domProps = {
  ...JsxDOM.domProps,
  class?: string,
  command?: command,
  commandFor?: string,
}
