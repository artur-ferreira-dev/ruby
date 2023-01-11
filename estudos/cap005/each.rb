# O método each

def my_method # o método pode encaminhar mais de um bloco de cada vez
    yield 1
    yield 2
    yield 3
end

my_method { |param | puts param}

["a", "b", "c"].each { |param | puts param}
