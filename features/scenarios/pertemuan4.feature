  Feature: login page
  
  @pertemuan4a
  Scenario: sebagai user, saya berhasil login (parsing parameter)
    Given [page_object] saya akses halaman automationexercise.com
    When [page_object] saya click tombol sign in di homepage
    Then [page_object] saya beralih ke halaman login
    When [page_object] saya entry username "wele.testing@gmail.com" di halaman login
    And [page_object] saya entry password "abc123" di halaman login
    And [page_object] saya click tombol login di halaman login
    Then [page_object] saya berhasil login

  @pertemuan4aNegative
  Scenario: sebagai user, saya tidak berhasil login (parsing parameter)
    Given [page_object] saya akses halaman automationexercise.com
    When [page_object] saya click tombol sign in di homepage
    Then [page_object] saya beralih ke halaman login
    When [page_object] saya entry username "xxwele.testing@gmail.com" di halaman login
    And [page_object] saya entry password "xxabc123" di halaman login
    And [page_object] saya click tombol login di halaman login
    Then [page_object] saya tidak berhasil login muncul error

