.class public abstract Ly2/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ll2/p;

.field public static final b:Ll2/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->f:Lcom/bumptech/glide/load/DecodeFormat;

    .line 2
    .line 3
    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DecodeFormat"

    .line 4
    .line 5
    invoke-static {v1, v0}, Ll2/p;->memory(Ljava/lang/String;Ljava/lang/Object;)Ll2/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Ly2/m;->a:Ll2/p;

    .line 10
    .line 11
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 12
    .line 13
    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DisableAnimation"

    .line 14
    .line 15
    invoke-static {v1, v0}, Ll2/p;->memory(Ljava/lang/String;Ljava/lang/Object;)Ll2/p;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Ly2/m;->b:Ll2/p;

    .line 20
    .line 21
    return-void
.end method
