.class public abstract Lm4/W;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/StringBuilder;

.field public static final b:Lokio/ByteString;

.field public static final c:Lokio/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lm4/W;->a:Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v0, "RIFF"

    .line 9
    .line 10
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lm4/W;->b:Lokio/ByteString;

    .line 15
    .line 16
    const-string v0, "WEBP"

    .line 17
    .line 18
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lm4/W;->c:Lokio/ByteString;

    .line 23
    .line 24
    return-void
.end method
