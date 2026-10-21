.class public final Lcom/google/firebase/sessions/SessionDataStoreConfigs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/google/firebase/sessions/SessionDataStoreConfigs;

.field private static final PROCESS_NAME:Ljava/lang/String;

.field private static final SESSIONS_CONFIG_NAME:Ljava/lang/String;

.field private static final SETTINGS_CONFIG_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/firebase/sessions/SessionDataStoreConfigs;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/firebase/sessions/SessionDataStoreConfigs;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/firebase/sessions/SessionDataStoreConfigs;->INSTANCE:Lcom/google/firebase/sessions/SessionDataStoreConfigs;

    .line 7
    .line 8
    sget-object v0, Lcom/google/firebase/sessions/ProcessDetailsProvider;->INSTANCE:Lcom/google/firebase/sessions/ProcessDetailsProvider;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/firebase/sessions/ProcessDetailsProvider;->getProcessName$com_google_firebase_firebase_sessions()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, LP5/p;->encodeToByteArray(Ljava/lang/String;)[B

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/16 v1, 0xa

    .line 19
    .line 20
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/google/firebase/sessions/SessionDataStoreConfigs;->PROCESS_NAME:Ljava/lang/String;

    .line 25
    .line 26
    const-string v1, "firebase_session_"

    .line 27
    .line 28
    const-string v2, "_data"

    .line 29
    .line 30
    invoke-static {v1, v0, v2}, LA/i;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    sput-object v2, Lcom/google/firebase/sessions/SessionDataStoreConfigs;->SESSIONS_CONFIG_NAME:Ljava/lang/String;

    .line 35
    .line 36
    const-string v2, "_settings"

    .line 37
    .line 38
    invoke-static {v1, v0, v2}, LA/i;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Lcom/google/firebase/sessions/SessionDataStoreConfigs;->SETTINGS_CONFIG_NAME:Ljava/lang/String;

    .line 43
    .line 44
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getSESSIONS_CONFIG_NAME()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/SessionDataStoreConfigs;->SESSIONS_CONFIG_NAME:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSETTINGS_CONFIG_NAME()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/SessionDataStoreConfigs;->SETTINGS_CONFIG_NAME:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
