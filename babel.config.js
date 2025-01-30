const baseCfg = require('@VersoriumX/build/.babelrc');
module.exports = function (api) {
  api.cache(true);
  return baseCfg;
};
