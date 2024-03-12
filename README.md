# Buffer-Store

Stores various buffer related information in Neovim.

## Functionality

* Stores the cursor position for each buffer.
    * Stops your view from being centered when switching between buffers.
* Stores the directories of buffers with no name.
    * Stops buffers with no associated file from losing their directory when switching between buffers.
* :ENoName command.
    * Creates a new buffer with no associated file at the specified directory.

## Configuration

The default configuration is as such:
```lua
require("buffer_store").setup({
    cursor_position = {
        -- Store cursor position
        enabled = false,
    },

    no_name = {
        -- Store no name buffer directories
        enabled = false,

        -- Print the new working directory when creating a new no name buffer
        pwd = true,
    },
})
```

## Contributing

If you have any suggestions or problems, please [submit an issue](https://github.com/AxerTheAxe/buffer-store.nvim/issues/new).
If you would like to contribute code, [pull requests are welcome](https://github.com/AxerTheAxe/buffer-store.nvim/compare).

## License

This project is licensed under the [Unlicense](LICENSE) license.
