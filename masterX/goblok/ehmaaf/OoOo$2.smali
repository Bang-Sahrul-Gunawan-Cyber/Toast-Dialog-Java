.class LmasterX/goblok/ehmaaf/OoOo$2;
.super Ljava/lang/Object;
.source "OoOo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LmasterX/goblok/ehmaaf/OoOo;->get(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$alert:Landroid/app/AlertDialog;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, LmasterX/goblok/ehmaaf/OoOo$2;->val$alert:Landroid/app/AlertDialog;

    iput-object p2, p0, LmasterX/goblok/ehmaaf/OoOo$2;->val$context:Landroid/content/Context;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 107
    iget-object v0, p0, LmasterX/goblok/ehmaaf/OoOo$2;->val$alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 108
    iget-object v0, p0, LmasterX/goblok/ehmaaf/OoOo$2;->val$context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://lol.com"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 110
    return-void
.end method
