# úprava RuB studio: pole barev uživatele (Mega Kalendář) se do formuláře uživatele vkládají hookem jádra
# view_users_form (konec bloku Informace v users/_form.html.erb) – plugin už nepřepisuje celou šablonu users/_form,
# takže formulář je vždy ten z jádra (např. sekce „Automaticky sledovat“, 2FA, nápověda hesla).
module MegaCalendar
  class UsersHook < Redmine::Hook::ViewListener
    render_on :view_users_form, :partial => 'users/mega_calendar_colors'
  end
end
