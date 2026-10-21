package flix.com.vision.activities;

import A.h;
import C4.J;
import C4.L;
import Q4.d;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import e.AbstractActivityC0842v;
import flix.com.vision.R;
import flix.com.vision.activities.ModernFilePickerActivity;
import flix.com.vision.adapters.ModernFileAdapter$MODE;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import z.AbstractC1958d;

/* loaded from: classes2.dex */
public class ModernFilePickerActivity extends AbstractActivityC0842v implements J {

    /* renamed from: q, reason: collision with root package name */
    public static final /* synthetic */ int f14784q = 0;

    /* renamed from: b, reason: collision with root package name */
    public RecyclerView f14785b;

    /* renamed from: e, reason: collision with root package name */
    public TextView f14786e;

    /* renamed from: f, reason: collision with root package name */
    public TextView f14787f;

    /* renamed from: j, reason: collision with root package name */
    public TextView f14788j;

    /* renamed from: m, reason: collision with root package name */
    public L f14789m;

    /* renamed from: n, reason: collision with root package name */
    public final ArrayList f14790n = new ArrayList();

    /* renamed from: p, reason: collision with root package name */
    public File f14791p;

    public final void e() {
        File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
        if (externalStoragePublicDirectory.exists() && externalStoragePublicDirectory.canRead()) {
            f(externalStoragePublicDirectory);
        } else {
            f(Environment.getExternalStorageDirectory());
        }
    }

    public final void f(File file) {
        this.f14791p = file;
        this.f14786e.setText(file.getAbsolutePath());
        File[] listFiles = file.listFiles();
        ArrayList arrayList = this.f14790n;
        arrayList.clear();
        String stringExtra = getIntent().getStringExtra("picker_mode");
        if ("backup".equals(stringExtra)) {
            this.f14788j.setText("Select Backup File");
        }
        if ("m3u".equals(stringExtra)) {
            this.f14788j.setText("Select M3U8 Playlist File");
        }
        if ("subtitle".equals(stringExtra)) {
            this.f14788j.setText("Select Subtitle File");
        }
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (!file2.isDirectory()) {
                    String lowerCase = file2.getName().toLowerCase();
                    if ("backup".equals(stringExtra)) {
                        if (lowerCase.endsWith(".json")) {
                            arrayList.add(file2);
                        }
                    } else if ("m3u".equals(stringExtra)) {
                        if (lowerCase.endsWith(".m3u") || lowerCase.endsWith(".m3u8")) {
                            arrayList.add(file2);
                        }
                    } else if ("subtitle".equals(stringExtra)) {
                        if (lowerCase.endsWith(".vtt") || lowerCase.endsWith(".srt")) {
                            arrayList.add(file2);
                        }
                    } else if (lowerCase.endsWith(".m3u") || lowerCase.endsWith(".m3u8")) {
                        arrayList.add(file2);
                    }
                } else if (!file2.getName().startsWith(".")) {
                    arrayList.add(file2);
                }
            }
        }
        Collections.sort(arrayList, new J.c(8));
        if (arrayList.isEmpty()) {
            this.f14787f.setVisibility(0);
            this.f14785b.setVisibility(8);
        } else {
            this.f14787f.setVisibility(8);
            this.f14785b.setVisibility(0);
        }
        this.f14789m.notifyDataSetChanged();
        this.f14785b.scrollToPosition(0);
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i7, Intent intent) {
        boolean isExternalStorageManager;
        super.onActivityResult(i2, i7, intent);
        if (i2 != 101 || Build.VERSION.SDK_INT < 30) {
            return;
        }
        isExternalStorageManager = Environment.isExternalStorageManager();
        if (isExternalStorageManager) {
            e();
        } else {
            Toast.makeText(this, "Storage permission is still required.", 0).show();
            finish();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        File parentFile;
        File file = this.f14791p;
        if (file == null || file.equals(Environment.getExternalStorageDirectory()) || (parentFile = this.f14791p.getParentFile()) == null || !parentFile.canRead()) {
            super.onBackPressed();
        } else {
            f(parentFile);
        }
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        boolean isExternalStorageManager;
        super.onCreate(bundle);
        setContentView(R.layout.activity_modern_file_picker);
        this.f14785b = (RecyclerView) findViewById(R.id.recycler_files);
        this.f14786e = (TextView) findViewById(R.id.current_path);
        this.f14788j = (TextView) findViewById(R.id.file_picker_title);
        this.f14787f = (TextView) findViewById(R.id.empty_view);
        String stringExtra = getIntent().getStringExtra("picker_mode");
        ModernFileAdapter$MODE modernFileAdapter$MODE = ModernFileAdapter$MODE.f15789b;
        if ("backup".equals(stringExtra)) {
            modernFileAdapter$MODE = ModernFileAdapter$MODE.f15790e;
        } else if ("subtitle".equals(stringExtra)) {
            modernFileAdapter$MODE = ModernFileAdapter$MODE.f15791f;
        }
        this.f14785b.setLayoutManager(new LinearLayoutManager(this));
        L l7 = new L(this, this.f14790n, this, modernFileAdapter$MODE);
        this.f14789m = l7;
        this.f14785b.setAdapter(l7);
        if (Build.VERSION.SDK_INT < 30) {
            if (h.checkSelfPermission(this, "android.permission.READ_EXTERNAL_STORAGE") != 0) {
                AbstractC1958d.requestPermissions(this, new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 100);
                return;
            } else {
                e();
                return;
            }
        }
        isExternalStorageManager = Environment.isExternalStorageManager();
        if (isExternalStorageManager) {
            e();
            return;
        }
        d newInstance = d.newInstance(this, false);
        newInstance.setTitle("Storage Permission Required");
        newInstance.setMessage("To access files, please grant 'All Files Access' permission in the app settings.");
        final int i2 = 0;
        newInstance.setButton1("CANCEL", new View.OnClickListener(this) { // from class: y4.j0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ ModernFilePickerActivity f21243e;

            {
                this.f21243e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ModernFilePickerActivity modernFilePickerActivity = this.f21243e;
                switch (i2) {
                    case 0:
                        int i7 = ModernFilePickerActivity.f14784q;
                        modernFilePickerActivity.getClass();
                        Toast.makeText(modernFilePickerActivity, "Permission is required to continue.", 0).show();
                        modernFilePickerActivity.finish();
                        break;
                    default:
                        int i8 = ModernFilePickerActivity.f14784q;
                        modernFilePickerActivity.getClass();
                        try {
                            Intent intent = new Intent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION");
                            intent.addCategory("android.intent.category.DEFAULT");
                            intent.setData(Uri.parse("package:" + modernFilePickerActivity.getApplicationContext().getPackageName()));
                            modernFilePickerActivity.startActivityForResult(intent, 101);
                        } catch (Exception unused) {
                            Intent intent2 = new Intent();
                            intent2.setAction("android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION");
                            modernFilePickerActivity.startActivityForResult(intent2, 101);
                        }
                        if (Build.VERSION.SDK_INT >= 30) {
                            try {
                                try {
                                    Intent intent3 = new Intent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION");
                                    intent3.addCategory("android.intent.category.DEFAULT");
                                    intent3.setData(Uri.parse("package:" + modernFilePickerActivity.getPackageName()));
                                    modernFilePickerActivity.startActivityForResult(intent3, 101);
                                    break;
                                } catch (ActivityNotFoundException unused2) {
                                    try {
                                        Log.e("FilePicker", "Specific All Files settings not found, falling back to App Details");
                                        Intent intent4 = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                                        intent4.addCategory("android.intent.category.DEFAULT");
                                        intent4.setData(Uri.parse("package:" + modernFilePickerActivity.getPackageName()));
                                        modernFilePickerActivity.startActivity(intent4);
                                        Toast.makeText(modernFilePickerActivity, "Please go to Permissions > Storage and allow access", 1).show();
                                        return;
                                    } catch (Exception unused3) {
                                        Toast.makeText(modernFilePickerActivity, "Could not open settings. Please manually enable storage permission.", 1).show();
                                    }
                                }
                            } catch (Exception unused4) {
                                Intent intent5 = new Intent("android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION");
                                intent5.addCategory("android.intent.category.DEFAULT");
                                modernFilePickerActivity.startActivityForResult(intent5, 101);
                                return;
                            }
                        }
                        break;
                }
            }
        });
        final int i7 = 1;
        newInstance.setButton2("GRANT PERMISSION", new View.OnClickListener(this) { // from class: y4.j0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ ModernFilePickerActivity f21243e;

            {
                this.f21243e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ModernFilePickerActivity modernFilePickerActivity = this.f21243e;
                switch (i7) {
                    case 0:
                        int i72 = ModernFilePickerActivity.f14784q;
                        modernFilePickerActivity.getClass();
                        Toast.makeText(modernFilePickerActivity, "Permission is required to continue.", 0).show();
                        modernFilePickerActivity.finish();
                        break;
                    default:
                        int i8 = ModernFilePickerActivity.f14784q;
                        modernFilePickerActivity.getClass();
                        try {
                            Intent intent = new Intent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION");
                            intent.addCategory("android.intent.category.DEFAULT");
                            intent.setData(Uri.parse("package:" + modernFilePickerActivity.getApplicationContext().getPackageName()));
                            modernFilePickerActivity.startActivityForResult(intent, 101);
                        } catch (Exception unused) {
                            Intent intent2 = new Intent();
                            intent2.setAction("android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION");
                            modernFilePickerActivity.startActivityForResult(intent2, 101);
                        }
                        if (Build.VERSION.SDK_INT >= 30) {
                            try {
                                try {
                                    Intent intent3 = new Intent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION");
                                    intent3.addCategory("android.intent.category.DEFAULT");
                                    intent3.setData(Uri.parse("package:" + modernFilePickerActivity.getPackageName()));
                                    modernFilePickerActivity.startActivityForResult(intent3, 101);
                                    break;
                                } catch (ActivityNotFoundException unused2) {
                                    try {
                                        Log.e("FilePicker", "Specific All Files settings not found, falling back to App Details");
                                        Intent intent4 = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                                        intent4.addCategory("android.intent.category.DEFAULT");
                                        intent4.setData(Uri.parse("package:" + modernFilePickerActivity.getPackageName()));
                                        modernFilePickerActivity.startActivity(intent4);
                                        Toast.makeText(modernFilePickerActivity, "Please go to Permissions > Storage and allow access", 1).show();
                                        return;
                                    } catch (Exception unused3) {
                                        Toast.makeText(modernFilePickerActivity, "Could not open settings. Please manually enable storage permission.", 1).show();
                                    }
                                }
                            } catch (Exception unused4) {
                                Intent intent5 = new Intent("android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION");
                                intent5.addCategory("android.intent.category.DEFAULT");
                                modernFilePickerActivity.startActivityForResult(intent5, 101);
                                return;
                            }
                        }
                        break;
                }
            }
        });
        newInstance.show(getFragmentManager(), "Manage Storage Permission");
    }

    @Override // C4.J
    public void onFileClicked(File file) {
        if (file.isDirectory()) {
            f(file);
            return;
        }
        Intent intent = new Intent();
        intent.putExtra("file_extra_data", file.getAbsolutePath());
        setResult(-1, intent);
        finish();
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i2, strArr, iArr);
        if (i2 == 100) {
            if (iArr.length > 0 && iArr[0] == 0) {
                e();
            } else {
                Toast.makeText(this, "Storage permission denied. Cannot browse files.", 1).show();
                finish();
            }
        }
    }
}
