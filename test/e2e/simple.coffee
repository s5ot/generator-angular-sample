describe('Buzz Client', ->
  beforeEach(->
    browser().navigateTo('/')
  )

  it('redirect works', ->
    expect(browser().window().href()).toBe('http://localhost:8080/#/')
  )

  it('should filter results',  ->
    expect(repeater('.tasks li').count()).toBe(5)
    #input('user').enter('jacksparrow')
    #element(':button').click()
    #expect(repeater('ul li').count()).toEqual(10)
    #input('filterText').enter('Bees')
    #expect(repeater('ul li').count()).toEqual(1)
  )
)
