// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_expense_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentExpenseModelImpl _$$DocumentExpenseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentExpenseModelImpl(
      expenseHdId: json['expense_hd_id'] as String?,
      companyId: json['master_company_id'] as String?,
      branchId: json['master_branch_id'] as String?,
      branchName: json['master_branch_name'] as String?,
      expenseHdDocudate: json['expense_hd_docudate'] as String?,
      expenseHdDocuno: json['expense_hd_docuno'] as String?,
      expenseHdStatusId: json['expense_hd_status_id'] as num?,
      contactId: json['master_contact_id'] as String?,
      contactCode: json['master_contact_code'] as String?,
      contactName: json['master_contact_name'] as String?,
      expenseHdRemark: json['expense_hd_remark'] as String?,
      vatGroupId: json['master_vat_group_id'] as num?,
      vatGroupName: json['master_vat_group_name'] as String?,
      vatRate: json['master_vat_rate'] as String?,
      expenseHdTypeId: json['expense_hd_type_id'] as num?,
      expenseHdCreditday: json['expense_hd_creditday'] as num?,
      expenseHdCashAmount: json['expense_hd_cash_amount'] as String?,
      expenseHdTransferAmount: json['expense_hd_transfer_amount'] as String?,
      branchBankbookId: json['master_branch_bankbook_id'] as String?,
      bankId: json['master_bank_id'] as num?,
      bankName: json['master_bank_name'] as String?,
      branchBankbookBankbookno:
          json['master_branch_bankbook_bankbookno'] as String?,
      branchBankbookBranchname:
          json['master_branch_bankbook_branchname'] as String?,
      branchBankbookName: json['master_branch_bankbook_name'] as String?,
      vendorBankbookno: json['vendor_bankbookno'] as String?,
      vendorBankName: json['vendor_bank_name'] as String?,
      vendorBankbookBranchname: json['vendor_bankbook_branchname'] as String?,
      expenseHdAmount: json['expense_hd_amount'] as String?,
      expenseHdTotalexcludeamnt: json['expense_hd_totalexcludeamnt'] as String?,
      expenseHdTotalincludeamnt: json['expense_hd_totalincludeamnt'] as String?,
      expenseHdBaseamnt: json['expense_hd_baseamnt'] as String?,
      expenseHdVatamnt: json['expense_hd_vatamnt'] as String?,
      expenseHdDiscountAmount: json['expense_hd_discount_amount'] as String?,
      expenseHdNetamnt: json['expense_hd_netamnt'] as String?,
      fullname: json['fullname'] as String?,
      contactAddress: json['master_contact_address'] as String?,
      contactTel: json['master_contact_tel'] as String?,
      contactTaxid: json['master_contact_taxid'] as String?,
    );

Map<String, dynamic> _$$DocumentExpenseModelImplToJson(
        _$DocumentExpenseModelImpl instance) =>
    <String, dynamic>{
      'expense_hd_id': instance.expenseHdId,
      'master_company_id': instance.companyId,
      'master_branch_id': instance.branchId,
      'master_branch_name': instance.branchName,
      'expense_hd_docudate': instance.expenseHdDocudate,
      'expense_hd_docuno': instance.expenseHdDocuno,
      'expense_hd_status_id': instance.expenseHdStatusId,
      'master_contact_id': instance.contactId,
      'master_contact_code': instance.contactCode,
      'master_contact_name': instance.contactName,
      'expense_hd_remark': instance.expenseHdRemark,
      'master_vat_group_id': instance.vatGroupId,
      'master_vat_group_name': instance.vatGroupName,
      'master_vat_rate': instance.vatRate,
      'expense_hd_type_id': instance.expenseHdTypeId,
      'expense_hd_creditday': instance.expenseHdCreditday,
      'expense_hd_cash_amount': instance.expenseHdCashAmount,
      'expense_hd_transfer_amount': instance.expenseHdTransferAmount,
      'master_branch_bankbook_id': instance.branchBankbookId,
      'master_bank_id': instance.bankId,
      'master_bank_name': instance.bankName,
      'master_branch_bankbook_bankbookno': instance.branchBankbookBankbookno,
      'master_branch_bankbook_branchname': instance.branchBankbookBranchname,
      'master_branch_bankbook_name': instance.branchBankbookName,
      'vendor_bankbookno': instance.vendorBankbookno,
      'vendor_bank_name': instance.vendorBankName,
      'vendor_bankbook_branchname': instance.vendorBankbookBranchname,
      'expense_hd_amount': instance.expenseHdAmount,
      'expense_hd_totalexcludeamnt': instance.expenseHdTotalexcludeamnt,
      'expense_hd_totalincludeamnt': instance.expenseHdTotalincludeamnt,
      'expense_hd_baseamnt': instance.expenseHdBaseamnt,
      'expense_hd_vatamnt': instance.expenseHdVatamnt,
      'expense_hd_discount_amount': instance.expenseHdDiscountAmount,
      'expense_hd_netamnt': instance.expenseHdNetamnt,
      'fullname': instance.fullname,
      'master_contact_address': instance.contactAddress,
      'master_contact_tel': instance.contactTel,
      'master_contact_taxid': instance.contactTaxid,
    };
