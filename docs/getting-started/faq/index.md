# PayCore.io<sup>®</sup> FAQ

![images/faq.svg](images/faq.svg)

Here You can find the answers for the most popular questions about interaction and working with PayCore.io!

<table> 
<tr><th>Question</th><th>Category</th><th>Resolution</th></tr>
<tbody>
<tr><td style="font-weight:bold">Error 403 Access denied</td><td>Page access</td><td>Ask the organisation administrator to check your permissions. Routing asccess depends on member's access scope</td>
<tr><td style="font-weight:bold">Error 403 Access denied</td><td>Payment Invoice Initiate</td><td>Turn on <b>Allow Public creation</b> property</td></tr>
<tr><td style="font-weight:bold"> Is there the operation with certain ID(ref_id) in PayCore?</td><td>Operations existatnce check </td>
<td>
<ul>
<li><b>201</b> — Successfuly created</li>
<li><b>4xx</b> — Creation <b>failed</b>. Check Server responce for details</li>
<li><b>5xx</b> — Server error, Status is <b>UNKNOWN</b>. Need to clarify operation state via API</li>
</ul>
Additionaly, Analytics service can be used to get operations by stauses, resolutions or another property 
</td></tr>
<tr><td style="font-weight:bold">Difference between Operation Status and Resolutions</td><td>Comparison of concepts</td><td>
<ul>
<li>Status — describes current state of the operation</li>
<li>Resolution — describes and extends the reason why the operation is in certain status</li>
</ul>

</td></tr>

<tr><td style="font-weight:bold">Resolution: <b>«Ok»</b> and status relates to the <b>ERROR</b> or <b>FAIL</b> group </td><td>Comparison of concepts</td><td>  Resolution: <b>«Ok»</b>, Status and Resolutions are <b>independent</b>. Each status can be with such resolution. Resolution <b>«Ok»</b> means that the process occurred in the planned scenario.</td></tr>

<tr>
<td style="font-weight:bold"> Payment Invoice «processed_amount»</b> equivalent to the  <b>«amount»</b>? </td><td>Operation fee and amounts calculating</td>

<td>
<ul> Values that are known at the time of the invoice creation
<li><b>"amount":100</b>, (amount - initiated amount of invoice (passed in the request)</li>
<li><b>"payment_amount":101.50</b>, (payment_amount - value to be paid by customer (in order to <b>include_fee</b> property: <b>payment_amount=amount</b> (include_fee:true), payment_amount=amount+fee (include_fee:false))</li>
<li><b>"fee":1.50</b>, (fee - разница между оплаченной сумой и сумой зачисления, ваша комиссия
)</li>
<li><b>"deposit":100</b>, (deposit - сумма зачисления на счет клиента, всегда меньше значения payment_amount на значение fee)</li>
</ul>
<ul> Values with  <b>processed</b> prefix are actual amounts <b>after</b> the payment process
<li><b>"processed_amount":101.50</b>, (processed_amount - сумма платежа, оплаченного клиентом (по идее processed_payment_amount), может быть меньше выставленной, поэтому мы пересчитываем комиссию)</li>
<li><b>"processed_fee":1.50</b>,(processed_fee - комиссия от суммы processed_amount)</li>
<li><b>"processed_deposit":100</b>,processed_deposit - фактическая cумма зачисления</li>
</ul>

<ul> Primary rules to check amounts are valid:

<li> payment_amount = deposit + fee</li>
<li> processed_amount = processed_fee + processed_deposit</li>
<li> processed_deposit = deposit </li>
<li> processed_amount= payment_amount </li>

</ul>

</td>
</tr>

<tr><td style="font-weight:bold">Operation has incorrect status</td><td>Operations management</td><td>
<ul> Go to the operation Overview page and use manual statement functionality
<li>Find <b>Add statement</b> button</li>
<li>Set parameters according to the valid information from Provider and submit the form (Note: <b>Status</b>, <b>Resolution</b> are <b>REQUIRED</b> fields)</li>
</ul>

</td></tr>

<tbody>
</table>


