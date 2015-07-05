Tester = require '../lib/tester'

describe "Tester", ->
  [testerMain] = []

  beforeEach ->
    waitsForPromise -> atom.packages.activatePackage('tester').then((pack) -> testerMain = pack.mainModule)

  describe "when the tester package is activated", ->
    it "activates successfully", ->
      expect(testerMain).toBeDefined()
