GƏLİR VƏ XƏRCLƏRİM — PUSH BİLDİRİŞLƏRİ

1. GitHub-a index.html, sw.js, manifest.webmanifest və ikon fayllarını yerləşdirin.
2. Supabase Edge Function: send-note-push.
3. Edge Function Secrets: SUPABASE_URL, SUPABASE_SERVICE_ROLE_KEY, VAPID_PUBLIC_KEY, VAPID_PRIVATE_KEY, CRON_SECRET.
4. Cron: send-note-push-every-minute — * * * * *
5. iPhone-da proqramı Ana Ekrandan (Home Screen) açın.
6. Proqramda Ayarlar → “🔔 Bildirişləri aktiv et” düyməsinə BASIN.
7. iPhone “Allow / İcazə ver” soruşarsa icazə verin.
8. Bu addım push subscription-u Supabase-də saxlayır.
9. Sonra proqramı bağlayıb qeyd üçün tarix və saat təyin edin.
10. Cron hər dəqiqə yoxlayacaq və vaxt çatanda push göndərəcək.

Qeyd: iPhone-da Web Push üçün proqramın Safari-dən Ana Ekrana əlavə edilmiş PWA kimi açılması vacibdir.
