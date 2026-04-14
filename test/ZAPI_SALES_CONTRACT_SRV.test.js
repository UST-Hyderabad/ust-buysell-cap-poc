const cds = require('@sap/cds')

const { GET, POST, expect, axios } = cds.test (__dirname+'/..')

describe('ZAPI_SALES_CONTRACT_SRV OData APIs', () => {

  it('serves ZAPI_SALES_CONTRACT_SRV.A_SalesContract', async () => {
    const { data } = await GET `/odata/v4/zapi-sales-contract-srv/A_SalesContract ${{ params: { $select: 'SalesContract,SalesContractType' } }}`
    expect(data.value).to.containSubset([
      {"SalesContract":"ct-2888451","SalesContractType":"8451"},
    ])
  })

  it('executes releaseApprovalRequest', async () => {
    const { data } = await POST `/odata/v4/zapi-sales-contract-srv/releaseApprovalRequest ${
      {"SalesContract":"t-14628280"}
    }`
    // TODO finish this test
    // expect(data.value).to...
  })
  it('executes rejectApprovalRequest', async () => {
    const { data } = await POST `/odata/v4/zapi-sales-contract-srv/rejectApprovalRequest ${
      {"SalesContract":"t-16748770"}
    }`
    // TODO finish this test
    // expect(data.value).to...
  })
})
