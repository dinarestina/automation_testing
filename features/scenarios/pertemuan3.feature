Feature: login page

  Background:
    Given saya akses halaman automationexercise.com
    When saya click tombol sign in di homepage
    Then saya beralih ke halaman login

  @pertemuan3a
  Scenario: sebagai user, saya berhasil login
    # Given saya akses halaman automationexercise.com
    # When saya click tombol sign in di homepage
    # Then saya beralih ke halaman login
    When saya entry username di halaman login
    And saya entry password di halaman login
    And saya click tombol login di halaman login
    Then saya berhasil login

  @pertemuan3b
  Scenario: sebagai user, saya berhasil login (parsing parameter)
    # Given saya akses halaman automationexercise.com
    # When saya click tombol sign in di homepage
    # Then saya beralih ke halaman login
    When saya entry username "wele.testing@gmail.com" di halaman login
    And saya entry password "abc123" di halaman login
    And saya click tombol login di halaman login
    Then saya berhasil login

  @pertemuan3c
  Scenario Outline: sebagai user, saya berhasil login (Example)
    When saya entry username "<username>" di halaman login
    And saya entry password "<password>" di halaman login
    And saya click tombol login di halaman login
    Then saya berhasil login

    Examples:
      | username                   |  | password   |
      | ogitest@gmail.com          |  | Ogitest123 |
      | eritanurhanjuli5@gmail.com |  | erita123   |
      | wele.testing@gmail.com     |  | abc123     |

@pertemuan3d
  Scenario: sebagai user, saya berhasil login (data-table)
    Given saya memiliki data sebagai berikut:
      | username                   | password    |
      | ogitest@gmail.com          | Ogitest123  |
      | eritanurhanjuli5@gmail.com | erita123    |
      | ogitest2@gmail.com         | Password123 |
    When saya entry username di halaman login berdasarkan data di atas
    And saya entry password di halaman login berdasarkan data di atas
    And saya click tombol login di halaman login
    Then saya berhasil login

@pertemuan3e
  Scenario Outline: sebagai user, saya berhasil login (example & datatale)
    Given saya memiliki data sebagai berikut (example):
      | username   | password   |
      | <username> | <password> |
    When saya entry username di halaman login berdasarkan data di atas (example)
    And saya entry password di halaman login berdasarkan data di atas (example)
    And saya click tombol login di halaman login
    Then saya berhasil login

    Examples:
      | username                   | password    |
      | ogitest@gmail.com          | Ogitest123  |
      | eritanurhanjuli5@gmail.com | erita123    |
      | ogitest2@gmail.com         | Password123 |