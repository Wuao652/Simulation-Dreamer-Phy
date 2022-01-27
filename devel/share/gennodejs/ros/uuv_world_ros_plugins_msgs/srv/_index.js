
"use strict";

let GetCurrentModel = require('./GetCurrentModel.js')
let SetCurrentModel = require('./SetCurrentModel.js')
let SetCurrentDirection = require('./SetCurrentDirection.js')
let TransformFromSphericalCoord = require('./TransformFromSphericalCoord.js')
let TransformToSphericalCoord = require('./TransformToSphericalCoord.js')
let SetOriginSphericalCoord = require('./SetOriginSphericalCoord.js')
let SetCurrentVelocity = require('./SetCurrentVelocity.js')
let GetOriginSphericalCoord = require('./GetOriginSphericalCoord.js')

module.exports = {
  GetCurrentModel: GetCurrentModel,
  SetCurrentModel: SetCurrentModel,
  SetCurrentDirection: SetCurrentDirection,
  TransformFromSphericalCoord: TransformFromSphericalCoord,
  TransformToSphericalCoord: TransformToSphericalCoord,
  SetOriginSphericalCoord: SetOriginSphericalCoord,
  SetCurrentVelocity: SetCurrentVelocity,
  GetOriginSphericalCoord: GetOriginSphericalCoord,
};
