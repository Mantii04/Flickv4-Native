.class public final LY4/b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:LY4/c;


# direct methods
.method public constructor <init>(LY4/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, LY4/b;->b:LY4/c;

    .line 2
    .line 3
    iput-object p2, p0, LY4/b;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, LY4/b;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4

    .line 2
    :try_start_0
    new-instance p1, LY4/a;

    iget-object v0, p0, LY4/b;->a:Ljava/lang/String;

    new-instance v1, LX4/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, v0}, LX4/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, LJ0/g;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, LJ0/g;-><init>(I)V

    invoke-direct {p1, p0, v0, v1, v2}, LY4/a;-><init>(LY4/b;Ljava/lang/String;LX4/a;LJ0/g;)V

    .line 3
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    move-result-object v0

    invoke-virtual {v0}, Lflix/com/vision/App;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, LY4/b;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
