return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.3.1",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 5,
  height = 5,
  tilewidth = 512,
  tileheight = 512,
  nextlayerid = 3,
  nextobjectid = 1,
  properties = {},
  tilesets = {
    {
      name = "map",
      firstgid = 1,
      filename = "assets/tile.tsx",
      tilewidth = 512,
      tileheight = 512,
      spacing = 0,
      margin = 0,
      columns = 1,
      image = "assets/map.png",
      imagewidth = 512,
      imageheight = 512,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 512,
        height = 512
      },
      properties = {},
      terrains = {},
      tilecount = 1,
      tiles = {}
    },
    {
      name = "borders",
      firstgid = 2,
      tilewidth = 512,
      tileheight = 512,
      spacing = 0,
      margin = 0,
      columns = 1,
      image = "assets/borders.png",
      imagewidth = 512,
      imageheight = 512,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 512,
        height = 512
      },
      properties = {},
      terrains = {},
      tilecount = 1,
      tiles = {
        {
          id = 0,
          objectGroup = {
            type = "objectgroup",
            id = 5,
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 7,
                name = "",
                type = "",
                shape = "rectangle",
                x = 2,
                y = 4,
                width = 512,
                height = 508,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 8,
                name = "",
                type = "",
                shape = "rectangle",
                x = 3.0303,
                y = 9.09091,
                width = 509.091,
                height = 493.939,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        }
      }
    },
    {
      name = "borders",
      firstgid = 3,
      tilewidth = 512,
      tileheight = 512,
      spacing = 0,
      margin = 0,
      columns = 1,
      image = "assets/borders.png",
      imagewidth = 512,
      imageheight = 512,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 512,
        height = 512
      },
      properties = {},
      terrains = {},
      tilecount = 1,
      tiles = {
        {
          id = 0,
          objectGroup = {
            type = "objectgroup",
            id = 5,
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 7,
                name = "",
                type = "",
                shape = "rectangle",
                x = 2,
                y = 4,
                width = 512,
                height = 508,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 8,
                name = "",
                type = "",
                shape = "rectangle",
                x = 3.0303,
                y = 9.09091,
                width = 509.091,
                height = 493.939,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        }
      }
    }
  },
  layers = {
    {
      type = "tilelayer",
      id = 1,
      name = "Tile Layer 1",
      x = 0,
      y = 0,
      width = 5,
      height = 5,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        1, 1, 1, 1, 1,
        1, 1, 1, 1, 1,
        1, 1, 1, 1, 1,
        1, 1, 1, 1, 1,
        1, 1, 1, 1, 1
      }
    },
    {
      type = "tilelayer",
      id = 2,
      name = "Tile Layer 2 Colli",
      x = 0,
      y = 0,
      width = 5,
      height = 5,
      visible = true,
      opacity = 0.23,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        2, 2, 2, 2, 2,
        2, 0, 0, 0, 2,
        2, 0, 2, 0, 2,
        2, 0, 0, 0, 2,
        2, 2, 2, 2, 2
      }
    }
  }
}
