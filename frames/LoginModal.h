//
// Created by rui on 01/11/2026.
//

#ifndef FINDATA_LOGINMODAL_H
#define FINDATA_LOGINMODAL_H
#include <string>


class LoginModal {
    public:
  LoginModal();
    ~LoginModal();
    LoginModal(const LoginModal &);
    LoginModal &operator=(const LoginModal &);

  // Open the modal popup
  void Open();

  // Renders the ImGui. Pass a callback or flag if you want to know when login succeeds.
  void Render(bool *closed = nullptr);

  // Getters for authentication check
  bool IsLoggedIn() const { return m_isLoggedIn; };
  const std::string& GetUsername() const { return m_username; }

  void Reset();

private:
  char m_username[128];
  char m_password[128];
  bool m_isLoggedIn;
  bool m_loginFailed;
  bool m_isOpen;

  /*
  static LoginModal& getInstance();
    void show(bool *closed);

    private:
  LoginModal();
    std::string error_message;
  bool redraw;
  */
};


#endif //FINDATA_LOGINMODAL_H
