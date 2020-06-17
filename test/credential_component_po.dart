import 'package:pageloader/pageloader.dart';

part 'credential_component_po.g.dart';

@PageObject()
abstract class CredentialComponentPageObject {
  CredentialComponentPageObject();
  factory CredentialComponentPageObject.create(PageLoaderElement context) =
      $CredentialComponentPageObject.create;

  @ByTagName('material-button')
  @WithVisibleText('sign on')
  PageLoaderElement get _button;

  Future<void> signOn() async => _button.click();
}
