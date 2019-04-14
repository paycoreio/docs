# PayCore.io FAQ

![FAQ](/images/faq.svg)

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


<tbody>
</table>