MERGE INTO properties (id, title, location, price, description, image_url)
KEY(id)
VALUES (1, 'Modern Loft with Skyline Views', 'Downtown Seattle, WA', 3200.00,
        'Stylish open-concept loft featuring floor-to-ceiling windows, polished concrete floors, and smart home integrations throughout.',
        'https://images.unsplash.com/photo-1502005097973-6a7082348e28');

MERGE INTO properties (id, title, location, price, description, image_url)
KEY(id)
VALUES (2, 'Family Home Near City Park', 'Portland, OR', 2450.00,
        'Inviting craftsman home with spacious backyard, updated kitchen, and quick access to neighborhood trails and parks.',
        'https://images.unsplash.com/photo-1572120360610-d971b9b78825');

MERGE INTO properties (id, title, location, price, description, image_url)
KEY(id)
VALUES (3, 'Cozy Studio by the Waterfront', 'San Francisco, CA', 1950.00,
        'Bright and efficient studio with custom built-ins, located steps from boutique cafes and the bay trail.',
        'https://images.unsplash.com/photo-1505691723518-36a5ac3be353');

MERGE INTO properties (id, title, location, price, description, image_url)
KEY(id)
VALUES (4, 'Minimalist Apartment in Arts District', 'Austin, TX', 2100.00,
        'Sunlit apartment with exposed beams, curated interior finishes, and walkable access to local galleries and cuisine.',
        'https://images.unsplash.com/photo-1554995207-c18c203602cb');

MERGE INTO properties (id, title, location, price, description, image_url)
KEY(id)
VALUES (5, 'Lakeside Retreat with Private Dock', 'Madison, WI', 2850.00,
        'Relax in this freshly renovated retreat featuring panoramic lake views, wraparound deck, and a private dock for weekend adventures.',
        'https://images.unsplash.com/photo-1475856034135-1f240ed7608d');

MERGE INTO property_images (property_id, image)
KEY(property_id, image)
VALUES (1, 'https://images.unsplash.com/photo-1502005097973-6a7082348e28');
MERGE INTO property_images (property_id, image)
KEY(property_id, image)
VALUES (1, 'https://images.unsplash.com/photo-1505691938895-1758d7feb511');
MERGE INTO property_images (property_id, image)
KEY(property_id, image)
VALUES (1, 'https://images.unsplash.com/photo-1486304873000-235643847519');
MERGE INTO property_images (property_id, image)
KEY(property_id, image)
VALUES (1, 'https://images.unsplash.com/photo-1512914890250-353c97c9e4c5');

MERGE INTO property_images (property_id, image)
KEY(property_id, image)
VALUES (2, 'https://images.unsplash.com/photo-1572120360610-d971b9b78825');
MERGE INTO property_images (property_id, image)
KEY(property_id, image)
VALUES (2, 'https://images.unsplash.com/photo-1580587771525-78b9dba3b914');
MERGE INTO property_images (property_id, image)
KEY(property_id, image)
VALUES (2, 'https://images.unsplash.com/photo-1586105251261-72a756497a12');
MERGE INTO property_images (property_id, image)
KEY(property_id, image)
VALUES (2, 'https://images.unsplash.com/photo-1600607687920-4e2a09cf159d');

MERGE INTO property_images (property_id, image)
KEY(property_id, image)
VALUES (3, 'https://images.unsplash.com/photo-1505691723518-36a5ac3be353');
MERGE INTO property_images (property_id, image)
KEY(property_id, image)
VALUES (3, 'https://images.unsplash.com/photo-1493663284031-b7e3aefcae8e');
MERGE INTO property_images (property_id, image)
KEY(property_id, image)
VALUES (3, 'https://images.unsplash.com/photo-1505691938895-1758d7feb511');
MERGE INTO property_images (property_id, image)
KEY(property_id, image)
VALUES (3, 'https://images.unsplash.com/photo-1486304873000-235643847519');

MERGE INTO property_images (property_id, image)
KEY(property_id, image)
VALUES (4, 'https://images.unsplash.com/photo-1554995207-c18c203602cb');
MERGE INTO property_images (property_id, image)
KEY(property_id, image)
VALUES (4, 'https://images.unsplash.com/photo-1484101403633-562f891dc89a');
MERGE INTO property_images (property_id, image)
KEY(property_id, image)
VALUES (4, 'https://images.unsplash.com/photo-1505691723518-36a5ac3be353');
MERGE INTO property_images (property_id, image)
KEY(property_id, image)
VALUES (4, 'https://images.unsplash.com/photo-1486304873000-235643847519');

MERGE INTO property_images (property_id, image)
KEY(property_id, image)
VALUES (5, 'https://images.unsplash.com/photo-1475856034135-1f240ed7608d');
MERGE INTO property_images (property_id, image)
KEY(property_id, image)
VALUES (5, 'https://images.unsplash.com/photo-1522708323590-d24dbb6b0267');
MERGE INTO property_images (property_id, image)
KEY(property_id, image)
VALUES (5, 'https://images.unsplash.com/photo-1568605114967-8130f3a36994');
MERGE INTO property_images (property_id, image)
KEY(property_id, image)
VALUES (5, 'https://images.unsplash.com/photo-1470246973918-29a93221c455');

MERGE INTO property_amenities (property_id, amenity)
KEY(property_id, amenity)
VALUES (1, '2 Beds');
MERGE INTO property_amenities (property_id, amenity)
KEY(property_id, amenity)
VALUES (1, '2 Baths');
MERGE INTO property_amenities (property_id, amenity)
KEY(property_id, amenity)
VALUES (1, '1,350 sqft');
MERGE INTO property_amenities (property_id, amenity)
KEY(property_id, amenity)
VALUES (1, 'Concierge');
MERGE INTO property_amenities (property_id, amenity)
KEY(property_id, amenity)
VALUES (1, 'Rooftop Deck');

MERGE INTO property_amenities (property_id, amenity)
KEY(property_id, amenity)
VALUES (2, '3 Beds');
MERGE INTO property_amenities (property_id, amenity)
KEY(property_id, amenity)
VALUES (2, '2 Baths');
MERGE INTO property_amenities (property_id, amenity)
KEY(property_id, amenity)
VALUES (2, '1,800 sqft');
MERGE INTO property_amenities (property_id, amenity)
KEY(property_id, amenity)
VALUES (2, 'Fenced Yard');
MERGE INTO property_amenities (property_id, amenity)
KEY(property_id, amenity)
VALUES (2, 'Attached Garage');

MERGE INTO property_amenities (property_id, amenity)
KEY(property_id, amenity)
VALUES (3, '1 Bed');
MERGE INTO property_amenities (property_id, amenity)
KEY(property_id, amenity)
VALUES (3, '1 Bath');
MERGE INTO property_amenities (property_id, amenity)
KEY(property_id, amenity)
VALUES (3, '620 sqft');
MERGE INTO property_amenities (property_id, amenity)
KEY(property_id, amenity)
VALUES (3, 'In-Unit Laundry');
MERGE INTO property_amenities (property_id, amenity)
KEY(property_id, amenity)
VALUES (3, 'Bike Storage');

MERGE INTO property_amenities (property_id, amenity)
KEY(property_id, amenity)
VALUES (4, '2 Beds');
MERGE INTO property_amenities (property_id, amenity)
KEY(property_id, amenity)
VALUES (4, '1 Bath');
MERGE INTO property_amenities (property_id, amenity)
KEY(property_id, amenity)
VALUES (4, '980 sqft');
MERGE INTO property_amenities (property_id, amenity)
KEY(property_id, amenity)
VALUES (4, 'Pet Friendly');
MERGE INTO property_amenities (property_id, amenity)
KEY(property_id, amenity)
VALUES (4, 'Coworking Lounge');

MERGE INTO property_amenities (property_id, amenity)
KEY(property_id, amenity)
VALUES (5, '4 Beds');
MERGE INTO property_amenities (property_id, amenity)
KEY(property_id, amenity)
VALUES (5, '3 Baths');
MERGE INTO property_amenities (property_id, amenity)
KEY(property_id, amenity)
VALUES (5, '2,400 sqft');
MERGE INTO property_amenities (property_id, amenity)
KEY(property_id, amenity)
VALUES (5, 'Private Dock');
MERGE INTO property_amenities (property_id, amenity)
KEY(property_id, amenity)
VALUES (5, 'Two-Car Garage');
