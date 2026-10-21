.class public abstract Lflix/com/vision/api/realdebrid/RealDebridCommon;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static b:Ljava/lang/String; = ""

.field public static e:Ljava/lang/String; = ""

.field public static f:Ljava/lang/String; = ""

.field public static j:Ljava/util/ArrayDeque;

.field public static m:Z

.field public static final n:Ljava/lang/String;

.field public static final p:Ljava/lang/String;

.field public static final q:Ljava/lang/String;

.field public static final r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lflix/com/vision/api/realdebrid/RealDebridCommon;->j:Ljava/util/ArrayDeque;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lflix/com/vision/api/realdebrid/RealDebridCommon;->m:Z

    .line 10
    .line 11
    const-string v1, "aHR0cHM6Ly9hcGkucmVhbC1kZWJyaWQuY29tL29hdXRoL3YyL2RldmljZS9jcmVkZW50aWFscz9jbGllbnRfaWQ9WDI0NUE0WEFJQkdWTSZjb2RlPQ"

    .line 12
    .line 13
    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Ljava/lang/String;

    .line 18
    .line 19
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 20
    .line 21
    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 22
    .line 23
    .line 24
    sput-object v2, Lflix/com/vision/api/realdebrid/RealDebridCommon;->n:Ljava/lang/String;

    .line 25
    .line 26
    const-string v1, "aHR0cHM6Ly9hcGkucmVhbC1kZWJyaWQuY29tL29hdXRoL3YyL2RldmljZS9jb2RlP2NsaWVudF9pZD1YMjQ1QTRYQUlCR1ZNJm5ld19jcmVkZW50aWFscz15ZXM"

    .line 27
    .line 28
    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Ljava/lang/String;

    .line 33
    .line 34
    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 35
    .line 36
    .line 37
    sput-object v2, Lflix/com/vision/api/realdebrid/RealDebridCommon;->p:Ljava/lang/String;

    .line 38
    .line 39
    const-string v1, "aHR0cHM6Ly9hcGkucmVhbC1kZWJyaWQuY29tL29hdXRoL3YyL3Rva2Vu"

    .line 40
    .line 41
    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Ljava/lang/String;

    .line 46
    .line 47
    invoke-direct {v1, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 48
    .line 49
    .line 50
    sput-object v1, Lflix/com/vision/api/realdebrid/RealDebridCommon;->q:Ljava/lang/String;

    .line 51
    .line 52
    const-string v0, "LavF1"

    .line 53
    .line 54
    sput-object v0, Lflix/com/vision/api/realdebrid/RealDebridCommon;->r:Ljava/lang/String;

    .line 55
    .line 56
    return-void
.end method
