# boffin-labs
A Sandbox environment to test Hadoop, Spark and Hive with Jupyter Hub

- Hadoop 3.3.4 
- Hive 3.1.3

## Add helm repo

<pre><code> helm repo add boffin-labs https://thisadev.github.io/boffin-labs/ </code></pre>

Once the repo is added you can check the repo using;

<pre><code> helm repo list </code></pre>

<table>
<tr>
  <th>NAME</th>
  <th>URL</th>
</tr>
<tr>
  <td>boffin-labs</td>
  <td>https://thisadev.github.io/boffin-labs/</td>
</tr>
</table>

## Install Hadoop 3.3.4 Chart

Search for the hadoop chart in the repo using;

<pre><code> helm search repo hadoop </code></pre>

<table>
<tr>
  <th>NAME</th>
  <th>CHART VERSION</th>
  <th>APP VERSION</th>
  <th>DESCRIPTION</th>
</tr>
<tr>
  <td>boffin-labs/hadoop</td>
  <td>1.0.1</td>
  <td>3.3.4</td>
  <td>The Apache Hadoop software library is a framewo...</td>
</tr>
</table>
