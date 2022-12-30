from mrjob.job import MRJob

class MapperReducer(MRJob):

    def mapper(self, _, line):
        row = line.split(',')
        event_type = row[1]      
        try:
            price = float(row[6])
        except ValueError:
            b'skipping line'
        else:
            yield(event_type,price)
        
    def reducer(self, event_type, value):
        yield(event_type, sum(value))

if __name__ == '__main__':
    MapperReducer.run()
