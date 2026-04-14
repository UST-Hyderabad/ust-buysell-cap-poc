const cds = require('@sap/cds')

const { GET, POST, expect, axios } = cds.test (__dirname+'/..')

describe('ProjectsysService OData APIs', () => {

  it('serves ProjectsysService.projects', async () => {
    const { data } = await GET `/odata/v4/projectsys/projects ${{ params: { $select: 'PSPNR,PSPID' } }}`
    expect(data.value).to.containSubset([
      {"PSPNR":"-7247121","PSPID":"PSPID-7247121"},
    ])
  })

  it('executes UpsertSalesContractData', async () => {
    const { data } = await POST `/odata/v4/projectsys/UpsertSalesContractData ${
      {}
    }`
    // TODO finish this test
    // expect(data.value).to...
  })
})
