Feature: Google search

  @pertemuan-5
  Scenario Outline: Saya berhasil search sesuatu di google.com
    Given saya berada di halaman google.com
    When saya mengetikkan keyword "<keyword>"
    Then saya berhasil mendapatkan hasil pencarian "<keyword>"

    Examples:
      | keyword  |
      | capybara |
      | selenium |