.class public abstract Lflix/com/vision/tv/Constant;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final b:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "https://www.swiftstreamz.cc/SwiftStreamzv2.4/"

    .line 2
    .line 3
    const-string v1, "data.php"

    .line 4
    .line 5
    invoke-static {v0, v1}, LA/i;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method
