.class public final Lk/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic b:Lk/C;


# direct methods
.method public constructor <init>(Lk/C;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk/A;->b:Lk/C;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/A;->b:Lk/C;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk/C;->onDismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
