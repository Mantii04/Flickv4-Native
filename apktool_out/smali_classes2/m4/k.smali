.class public Lm4/k;
.super Lm4/L;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm4/L;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm4/k;->a:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public canHandleRequest(Lm4/I;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lm4/I;->a:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "content"

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public load(Lm4/I;I)Lm4/K;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lm4/k;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget-object p1, p1, Lm4/I;->a:Landroid/net/Uri;

    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Le6/w;->source(Ljava/io/InputStream;)Le6/L;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance p2, Lm4/K;

    .line 18
    .line 19
    sget-object v0, Lcom/squareup/picasso/Picasso$LoadedFrom;->e:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 20
    .line 21
    invoke-direct {p2, p1, v0}, Lm4/K;-><init>(Le6/L;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    .line 22
    .line 23
    .line 24
    return-object p2
.end method
