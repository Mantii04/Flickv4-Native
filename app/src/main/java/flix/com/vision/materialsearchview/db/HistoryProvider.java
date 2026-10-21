package flix.com.vision.materialsearchview.db;

import android.content.ContentProvider;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import b.c;
import cz.msebera.android.httpclient.HttpStatus;
import flix.com.vision.materialsearchview.db.HistoryContract;

/* loaded from: classes2.dex */
public class HistoryProvider extends ContentProvider {

    /* renamed from: e, reason: collision with root package name */
    public static final UriMatcher f16057e = buildUriMatcher();

    /* renamed from: b, reason: collision with root package name */
    public HistoryDbHelper f16058b;

    public static UriMatcher buildUriMatcher() {
        Uri uri = HistoryContract.f16053a;
        UriMatcher uriMatcher = new UriMatcher(-1);
        uriMatcher.addURI("flix.com.vision.materialsearchview.searchhistorydatabase", "history", 100);
        uriMatcher.addURI("flix.com.vision.materialsearchview.searchhistorydatabase", "history/#", 101);
        uriMatcher.addURI("flix.com.vision.materialsearchview.searchhistorydatabase", "history/#", HttpStatus.SC_PROCESSING);
        uriMatcher.addURI("flix.com.vision.materialsearchview.searchhistorydatabase", "history/#", 103);
        return uriMatcher;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        Context context;
        SQLiteDatabase writableDatabase = this.f16058b.getWritableDatabase();
        if (f16057e.match(uri) != 100) {
            throw new UnsupportedOperationException(c.k("Unknown uri: ", uri));
        }
        int delete = writableDatabase.delete("SEARCH_HISTORY", str, strArr);
        if ((str == null || delete != 0) && (context = getContext()) != null) {
            context.getContentResolver().notifyChange(uri, null);
        }
        return delete;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        switch (f16057e.match(uri)) {
            case 100:
                return HistoryContract.HistoryEntry.f16055b;
            case 101:
            case HttpStatus.SC_PROCESSING /* 102 */:
            case 103:
                return HistoryContract.HistoryEntry.f16056c;
            default:
                throw new UnsupportedOperationException(c.k("Uknown Uri: ", uri));
        }
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        SQLiteDatabase writableDatabase = this.f16058b.getWritableDatabase();
        if (f16057e.match(uri) != 100) {
            throw new UnsupportedOperationException(c.k("Unknown uri: ", uri));
        }
        long insert = writableDatabase.insert("SEARCH_HISTORY", null, contentValues);
        if (insert > 0) {
            return HistoryContract.HistoryEntry.buildHistoryUri(insert);
        }
        throw new UnsupportedOperationException(c.k("Unable to insert rows into: ", uri));
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.f16058b = new HistoryDbHelper(getContext());
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        Cursor query;
        SQLiteDatabase readableDatabase = this.f16058b.getReadableDatabase();
        switch (f16057e.match(uri)) {
            case 100:
                query = readableDatabase.query("SEARCH_HISTORY", strArr, str, strArr2, null, null, str2);
                break;
            case 101:
                query = readableDatabase.query("SEARCH_HISTORY", strArr, "insert_date = ?", new String[]{String.valueOf(ContentUris.parseId(uri))}, null, null, str2);
                break;
            case HttpStatus.SC_PROCESSING /* 102 */:
                query = readableDatabase.query("SEARCH_HISTORY", strArr, "_id = ?", new String[]{String.valueOf(ContentUris.parseId(uri))}, null, null, str2);
                break;
            case 103:
                query = readableDatabase.query("SEARCH_HISTORY", strArr, "is_history = ?", new String[]{String.valueOf(ContentUris.parseId(uri))}, null, null, str2);
                break;
            default:
                throw new UnsupportedOperationException(c.k("Unknown Uri: ", uri));
        }
        Context context = getContext();
        if (context != null) {
            query.setNotificationUri(context.getContentResolver(), uri);
        }
        return query;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        Context context;
        SQLiteDatabase writableDatabase = this.f16058b.getWritableDatabase();
        if (f16057e.match(uri) != 100) {
            throw new UnsupportedOperationException(c.k("Unknown uri: ", uri));
        }
        int update = writableDatabase.update("SEARCH_HISTORY", contentValues, str, strArr);
        if (update != 0 && (context = getContext()) != null) {
            context.getContentResolver().notifyChange(uri, null);
        }
        return update;
    }
}
