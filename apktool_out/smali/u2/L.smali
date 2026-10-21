.class public final Lu2/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/r;


# instance fields
.field public final a:Lw2/h;

.field public final b:Lo2/d;


# direct methods
.method public constructor <init>(Lw2/h;Lo2/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu2/L;->a:Lw2/h;

    .line 5
    .line 6
    iput-object p2, p0, Lu2/L;->b:Lo2/d;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public decode(Landroid/net/Uri;IILl2/q;)Ln2/M;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II",
            "Ll2/q;",
            ")",
            "Ln2/M;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lu2/L;->a:Lw2/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lw2/h;->decode(Landroid/net/Uri;IILl2/q;)Ln2/M;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-interface {p1}, Ln2/M;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 4
    iget-object p4, p0, Lu2/L;->b:Lo2/d;

    invoke-static {p4, p1, p2, p3}, Lu2/z;->a(Lo2/d;Landroid/graphics/drawable/Drawable;II)Lu2/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic decode(Ljava/lang/Object;IILl2/q;)Ln2/M;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lu2/L;->decode(Landroid/net/Uri;IILl2/q;)Ln2/M;

    move-result-object p1

    return-object p1
.end method

.method public handles(Landroid/net/Uri;Ll2/q;)Z
    .locals 0

    .line 2
    const-string p2, "android.resource"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;Ll2/q;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2}, Lu2/L;->handles(Landroid/net/Uri;Ll2/q;)Z

    move-result p1

    return p1
.end method
