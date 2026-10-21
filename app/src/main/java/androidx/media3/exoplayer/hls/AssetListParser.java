package androidx.media3.exoplayer.hls;

import Q3.C0248s;
import android.net.Uri;
import android.util.Pair;
import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.C;
import androidx.media3.common.ParserException;
import androidx.media3.exoplayer.hls.HlsInterstitialsAdsLoader;
import androidx.media3.exoplayer.upstream.ParsingLoadable;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class AssetListParser implements ParsingLoadable.Parser<Pair<HlsInterstitialsAdsLoader.AssetList, JSONObject>> {
    private static final String ASSET_LIST_JSON_NAME_ASSET_ARRAY = "ASSETS";
    private static final String ASSET_LIST_JSON_NAME_DURATION = "DURATION";
    private static final String ASSET_LIST_JSON_NAME_LABEL_ID = "LABEL-ID";
    private static final String ASSET_LIST_JSON_NAME_OFFSET = "OFFSET";
    private static final String ASSET_LIST_JSON_NAME_SKIP_CONTROL = "SKIP-CONTROL";
    private static final String ASSET_LIST_JSON_NAME_URI = "URI";

    private static HlsInterstitialsAdsLoader.AssetList getAssetListFromRawJson(JSONObject jSONObject) throws JSONException {
        if (!jSONObject.has(ASSET_LIST_JSON_NAME_ASSET_ARRAY)) {
            throw new JSONException("missing ASSETS attribute");
        }
        C0248s c0248s = new C0248s();
        JSONArray jSONArray = jSONObject.getJSONArray(ASSET_LIST_JSON_NAME_ASSET_ARRAY);
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
            if (!jSONObject2.has(ASSET_LIST_JSON_NAME_URI)) {
                throw new JSONException("missing URI attribute");
            }
            if (!jSONObject2.has(ASSET_LIST_JSON_NAME_DURATION)) {
                throw new JSONException("missing DURATION attribute");
            }
            c0248s.add((Object) new HlsInterstitialsAdsLoader.Asset(Uri.parse(jSONObject2.getString(ASSET_LIST_JSON_NAME_URI)), (long) (jSONObject2.getDouble(ASSET_LIST_JSON_NAME_DURATION) * 1000000.0d)));
        }
        AdPlaybackState.SkipInfo skipInfo = null;
        if (jSONObject.has(ASSET_LIST_JSON_NAME_SKIP_CONTROL)) {
            JSONObject jSONObject3 = jSONObject.getJSONObject(ASSET_LIST_JSON_NAME_SKIP_CONTROL);
            skipInfo = new AdPlaybackState.SkipInfo(jSONObject3.has(ASSET_LIST_JSON_NAME_OFFSET) ? (long) (jSONObject3.getDouble(ASSET_LIST_JSON_NAME_OFFSET) * 1000000.0d) : 0L, jSONObject3.has(ASSET_LIST_JSON_NAME_DURATION) ? (long) (jSONObject3.getDouble(ASSET_LIST_JSON_NAME_DURATION) * 1000000.0d) : C.TIME_UNSET, jSONObject3.has(ASSET_LIST_JSON_NAME_LABEL_ID) ? jSONObject3.getString(ASSET_LIST_JSON_NAME_LABEL_ID) : null);
        }
        return new HlsInterstitialsAdsLoader.AssetList(c0248s.build(), skipInfo);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.media3.exoplayer.upstream.ParsingLoadable.Parser
    public Pair<HlsInterstitialsAdsLoader.AssetList, JSONObject> parse(Uri uri, InputStream inputStream) throws IOException {
        try {
            JSONObject jSONObject = new JSONObject(new String(R3.g.toByteArray(inputStream), StandardCharsets.UTF_8));
            return new Pair<>(getAssetListFromRawJson(jSONObject), jSONObject);
        } catch (IOException | JSONException e3) {
            throw ParserException.createForMalformedManifest(e3.getMessage(), e3);
        }
    }
}
