create extension if not exists pg_cron;
create extension if not exists pg_net;
create extension if not exists vault;
select vault.create_secret('QwKnSFh1ffmrJ1mxEjkW-rXNKD6JU1GABii9ppri70EQ','push_cron_secret');
select cron.unschedule(jobid) from cron.job where jobname='gelir-xerc-note-push';
select cron.schedule('gelir-xerc-note-push','* * * * *',$$select net.http_post(url := 'https://oxgtrsthnsuvzcfckcvo.supabase.co/functions/v1/send-note-push',headers := jsonb_build_object('Content-Type','application/json','x-cron-secret',(select decrypted_secret from vault.decrypted_secrets where name='push_cron_secret')),body := '{}'::jsonb);$$);
