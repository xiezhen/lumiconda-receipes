import frontier_dbapi as frontier
import logging
import sys
def main():
    logging.basicConfig(level = logging.DEBUG)   
    url = 'http://cmsfrontier.cern.ch:8000/FrontierPrep'
    connection = frontier.Connection(server_url=url)
    cursor1 = connection.cursor()
    cursor1.execute('select 1 from dual')
    #print cursor1.fetchall()
    print cursor1.fetchone()
    cursor1.close()
    connection.close()
    
if __name__=='__main__':    
    main()
