abstract class SignupState {}

class SignupInitial extends SignupState {}

class SignupLoading extends SignupState{}
class SignupSuccess extends SignupState{}
class SignupFailed extends SignupState{}
class ChangeSuffixIcon extends SignupState{}
class ChangeReSuffixIcon extends SignupState{}
class NavigateToLogin extends SignupState{}