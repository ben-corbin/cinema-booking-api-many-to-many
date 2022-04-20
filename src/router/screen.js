const express = require('express')
const router = express.Router()

const controller = require('../controller/screen')

router.get("/:screenId/seats", controller.getSeatsForScreen)

module.exports = router