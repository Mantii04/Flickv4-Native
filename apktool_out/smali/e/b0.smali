.class public final synthetic Le/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM/t;


# instance fields
.field public final synthetic b:Le/c0;


# direct methods
.method public synthetic constructor <init>(Le/c0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/b0;->b:Le/c0;

    return-void
.end method


# virtual methods
.method public final superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/b0;->b:Le/c0;

    invoke-virtual {v0, p1}, Le/c0;->b(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
