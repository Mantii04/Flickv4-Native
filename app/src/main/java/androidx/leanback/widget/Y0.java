package androidx.leanback.widget;

import android.os.Bundle;
import android.speech.RecognitionListener;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class Y0 implements RecognitionListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SearchBar f6762a;

    public Y0(SearchBar searchBar) {
        this.f6762a = searchBar;
    }

    @Override // android.speech.RecognitionListener
    public void onBeginningOfSpeech() {
    }

    @Override // android.speech.RecognitionListener
    public void onBufferReceived(byte[] bArr) {
    }

    @Override // android.speech.RecognitionListener
    public void onEndOfSpeech() {
    }

    @Override // android.speech.RecognitionListener
    public void onError(int i2) {
        switch (i2) {
            case 1:
                int i7 = SearchBar.f6671G;
                Log.w("SearchBar", "recognizer network timeout");
                break;
            case 2:
                int i8 = SearchBar.f6671G;
                Log.w("SearchBar", "recognizer network error");
                break;
            case 3:
                int i9 = SearchBar.f6671G;
                Log.w("SearchBar", "recognizer audio error");
                break;
            case 4:
                int i10 = SearchBar.f6671G;
                Log.w("SearchBar", "recognizer server error");
                break;
            case 5:
                int i11 = SearchBar.f6671G;
                Log.w("SearchBar", "recognizer client error");
                break;
            case 6:
                int i12 = SearchBar.f6671G;
                Log.w("SearchBar", "recognizer speech timeout");
                break;
            case 7:
                int i13 = SearchBar.f6671G;
                Log.w("SearchBar", "recognizer no match");
                break;
            case 8:
                int i14 = SearchBar.f6671G;
                Log.w("SearchBar", "recognizer busy");
                break;
            case 9:
                int i15 = SearchBar.f6671G;
                Log.w("SearchBar", "recognizer insufficient permissions");
                break;
            default:
                int i16 = SearchBar.f6671G;
                Log.d("SearchBar", "recognizer other error");
                break;
        }
        SearchBar searchBar = this.f6762a;
        searchBar.stopRecognition();
        searchBar.f6685q.post(new O0(searchBar, androidx.leanback.R.raw.lb_voice_failure));
    }

    @Override // android.speech.RecognitionListener
    public void onEvent(int i2, Bundle bundle) {
    }

    @Override // android.speech.RecognitionListener
    public void onPartialResults(Bundle bundle) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("results_recognition");
        if (stringArrayList == null || stringArrayList.size() == 0) {
            return;
        }
        this.f6762a.f6678b.updateRecognizedText(stringArrayList.get(0), stringArrayList.size() > 1 ? stringArrayList.get(1) : null);
    }

    @Override // android.speech.RecognitionListener
    public void onReadyForSpeech(Bundle bundle) {
        SearchBar searchBar = this.f6762a;
        searchBar.f6679e.showListening();
        searchBar.f6685q.post(new O0(searchBar, androidx.leanback.R.raw.lb_voice_open));
    }

    @Override // android.speech.RecognitionListener
    public void onResults(Bundle bundle) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("results_recognition");
        SearchBar searchBar = this.f6762a;
        if (stringArrayList != null) {
            String str = stringArrayList.get(0);
            searchBar.f6681j = str;
            searchBar.f6678b.setText(str);
            TextUtils.isEmpty(searchBar.f6681j);
        }
        searchBar.stopRecognition();
        searchBar.f6685q.post(new O0(searchBar, androidx.leanback.R.raw.lb_voice_success));
    }

    @Override // android.speech.RecognitionListener
    public void onRmsChanged(float f3) {
        this.f6762a.f6679e.setSoundLevel(f3 < 0.0f ? 0 : (int) (f3 * 10.0f));
    }
}
