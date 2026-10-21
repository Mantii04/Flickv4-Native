.class public final Ll/h1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ll/l1;


# direct methods
.method public constructor <init>(Ll/l1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll/h1;->a:Ll/l1;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Ll/h1;->a:Ll/l1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll/l1;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ll/l1;->show()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 1
    iget-object v0, p0, Ll/h1;->a:Ll/l1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll/l1;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
