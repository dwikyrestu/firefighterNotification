package com.tugas.dwiky.ambilkoordinat;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import com.google.android.gms.location.LocationServices;
/*
plz dont remove this !!!
Crafted With Pride by Dwiky Restu N.
 */
public class SucSend extends AppCompatActivity {
    private Button button;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_suc_send);

        button = (Button) findViewById(R.id.button);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(SucSend.this, MainActivity.class);
                startActivity(intent);
            }
        });
    }
}
