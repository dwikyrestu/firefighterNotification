package com.tugas.dwiky.ambilkoordinat;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.widget.TextView;
import android.widget.Toast;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

import java.util.HashMap;
import java.util.Map;
/*
plz dont remove this !!!
Crafted With Pride by Dwiky Restu N.
 */
public class ProcSend extends AppCompatActivity {
    TextView t1;
    TextView t2;
    TextView t3;
    String url = "https://pemadamkebakarankotamalang.000webhostapp.com/api-android.php";
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_proc_send);

        Bundle b = getIntent().getExtras();
        final Double latitude = b.getDouble("lat");
        final Double longitude = b.getDouble("long");

        final String address = b.getString("adrs");
        final String lat = String.valueOf(latitude);
        final String lon = String.valueOf(longitude);

        RequestQueue queue = Volley.newRequestQueue(ProcSend.this);
        StringRequest request = new StringRequest(Request.Method.POST, url, new Response.Listener<String>() {
            @Override
            public void onResponse(String response) {
                //Toast.makeText(ProcSend.this, "Data "+response, Toast.LENGTH_SHORT).show();
                Intent intent = new Intent(ProcSend.this, SucSend.class);
                startActivity(intent);
                Log.i("My success",""+response);
            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {

                Toast.makeText(ProcSend.this, "my error :"+error, Toast.LENGTH_LONG).show();
                Log.i("My error",""+error);
            }
        }){
            @Override
            protected Map<String, String> getParams() throws AuthFailureError {

                Map<String,String> map = new HashMap<String, String>();
                map.put("name",address);
                map.put("email",lat);
                map.put("password",lon);
                return map;
            }
        };
        queue.add(request);

    }
}
