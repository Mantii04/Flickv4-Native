.class public final Lx4/e;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lflix/com/vision/App;


# direct methods
.method public constructor <init>(Lflix/com/vision/App;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx4/e;->a:Lflix/com/vision/App;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lx4/e;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 2
    iget-object p1, p0, Lx4/e;->a:Lflix/com/vision/App;

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    const-string v2, "data_type10"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    sget-object v1, LT4/f;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Lflix/com/vision/App;->downloadFileAndUnzipNew(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method
