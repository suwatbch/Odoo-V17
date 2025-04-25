FROM odoo:17

# คัดลอกไฟล์ config และโมดูลเพิ่มเติมเข้า container
COPY ./odoo.conf /etc/odoo/
COPY ./addons /mnt/extra-addons

# เปิดพอร์ตที่ Odoo ใช้
EXPOSE 8000

# คำสั่งรัน Odoo
CMD ["odoo"]