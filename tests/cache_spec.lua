local util = require("oncedark.utils")
local cache_path = require("oncedark.config").config.cache_path

local tbl = {}
local hash = nil

describe("Using the theme", function()
  before_each(function()
    vim.cmd(":e tests/stubs/test.txt")
  end)

  it("it SHOULD NOT regenerate a hash if it doesn't need to", function()
    assert.equals(vim.g.oncedark_hash, util.hash(util.join_paths(cache_path, "cache")))
  end)

  it("it SHOULD NOT regenerate colorschemes if it doesn't need to", function()
    assert.equals(
      vim.g.oncedark_compiled,
      util.hash(util.join_paths(cache_path, "oncedark_compiled"))
    )
    assert.equals(
      vim.g.oncelight_compiled,
      util.hash(util.join_paths(cache_path, "oncelight_compiled"))
    )
  end)
end)

describe("Using the cache", function()
  before_each(function()
    require("oncedark").clean()
    tbl = {
      colors = {},
      highlights = {},
      filetypes = {
        vue = true,
        javascript = true,
        lua = true,
        python = true,
        ruby = true,
        markdown = true,
        typescriptreact = true,
        rust = true,
        toml = true,
        php = true,
        typescript = true,
        yaml = true,
      },
    }
    hash = require("oncedark.lib.hash")(tbl)
  end)

  it("the SAME table should always return the SAME hash", function()
    assert.equals(-215055643, hash)
  end)

  it("a MODIFIED table should return a DIFFERENT hash", function()
    tbl.colors = {
      red = "#ff0000",
    }
    assert.not_equals(hash, require("oncedark.lib.hash")(tbl))
  end)
end)
