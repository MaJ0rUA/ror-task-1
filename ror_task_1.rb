class RorTask1
  require 'prime'
  require 'pry'
  require 'active_support'

  #Напишите программу, которая для заданного натурального числа num определяет
  #количество вхождений числа 3 в разложение заданного числа на простые сомножители.
  def how_many_threes num 
  primes = Prime.take_while{ |n| n < num }
  result = []
  res = []
  primes.each do |x|
    while true
      if num % x == 0
        result << x
        num = num / x
      else
        break
      end  
    end 
  end
  result.count(3)
  
 
  end
 
  #Дан текст. Определите максимальное из имеющихся в нем чисел.
  def max_number_in_text text
      digit = text.scan(/[\-|\+]?[0-9]+(?:[\,|\.][0-9]+)?/)
      z = digit.each { |x| x.gsub!(/,/, '.') }.map(&:to_f).max
     (z % 1).zero? ? z.to_i : z
    #код писать сюда
  end

  #Дан целочисленный массив. Необходимо вывести вначале его элементы с четными 
  #индексами, а затем - с нечетными.
  def even_odd_elements arr
   index_array = (0..arr.size - 1).to_a
   index_array.partition { |i| i[0].even? }.flatten.map { |i| arr[i] }
    #код писать сюда
  end

  #Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам последний 
  #элемент. Первый и последний элементы массива не изменять.
  def even_elements_addition arr
    arr.each_index { |y| arr[y] += arr.last if y != 0 && y != (arr.size - 1) && arr[y].odd? }
    #код писать сюда
  end

  #Дан целочисленный массив, содержащий по крайней мере два нуля. Вывести сумму чисел 
  #из данного массива, расположенных между первыми двумя нулями.
  def sum_between_zeros arr
    z = arr.each_index.select { |r| arr[r] == 0 }
+    arr[z[0]..z[1]].reduce(:+)
    #код писать сюда
  end
  ror = RorTask1.new()
  #puts ror.how_many_threes(333)
  #puts ror.even_odd_elements([3, 17, 8, 5, 6]) 
  #puts ror.max_number_in_text("Sasha + Natasha = 123 k1ss3s")
  #puts ror.even_elements_addition [1,2, 3, 4]
  puts ror.sum_between_zeros [1, 0, 2, 3, 0, 3, 5, 0]
end
