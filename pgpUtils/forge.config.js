module.exports = {
  packagerConfig: {
    asar: true,
  },
  rebuildConfig: {},
  makers: [
    {
      name: '@electron-forge/maker-squirrel',
      config: {},
    },
    
    // temp
    {
      name: '@electron-forge/maker-zip'
    },
    // temp

    {
      name: '@electron-forge/maker-zip',
      platforms: ['darwin'],
    },
    {
      name: '@electron-forge/maker-deb',
      config: {},
    },
    {
      name: '@electron-forge/maker-rpm',
      config: {},
    },
  ],
  plugins: [
    {
      name: '@electron-forge/plugin-auto-unpack-natives',
      config: {},
    },
  ],
  publishers: [
    {
      name: '@electron-forge/maker-pkg
    }
  //  {
  //    name: '@electron-forge/publisher-github',
  //    config: {
  //      repository: {
  //        owner: 'jonasalmeida',
  //       name: 'pgputils'
  //      },
  //      prerelease: true
  //    }
  //  }
  ]
};
