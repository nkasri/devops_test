import unittest
from petClinic import app


class TestDummy(unittest.TestCase):
    def setUp(self):
        app.testing = True
        self.app = app.test_client()

    def TestDummy(self):
        rv = self.app.get('/')
        self.assertEqual(rv.status, '200 OK')
        self.assertEqual(rv.data, 'Hello, this is petClinic main page')


if __name__ == '__main__':
    unittest.main()
