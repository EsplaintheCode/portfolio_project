--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);


ALTER TABLE public.alembic_version OWNER TO postgres;

--
-- Name: player; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.player (
    player_id text,
    team_id uuid,
    player_teamid text,
    player_name text NOT NULL,
    player_3pt_pct double precision NOT NULL,
    player_ft_pct double precision NOT NULL,
    player_fg_pct double precision NOT NULL
);


ALTER TABLE public.player OWNER TO postgres;

--
-- Name: team; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.team (
    team_name text NOT NULL,
    team_id uuid,
    team_3pt_pct double precision NOT NULL,
    team_ft_pct double precision NOT NULL,
    team_fg_pct double precision NOT NULL
);


ALTER TABLE public.team OWNER TO postgres;

--
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alembic_version (version_num) FROM stdin;
6e2d8edd7e80
\.


--
-- Data for Name: player; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.player (player_id, team_id, player_teamid, player_name, player_3pt_pct, player_ft_pct, player_fg_pct) FROM stdin;
1cca5ba9-8ddb-4029-969a-a5768993a0dd	171b097d-01db-4ae8-9d56-035689402ec6	\N	Emma Cannon	0	0	0.667
3112ab66-5995-4ed1-b460-2b0e5abc2dd1	171b097d-01db-4ae8-9d56-035689402ec6	\N	Kierstan Bell	1	0	0.5
3bca6f7c-3910-4f27-9372-db6ccbc64157	171b097d-01db-4ae8-9d56-035689402ec6	\N	Sydney Colson	0.429	0.889	0.417
4daa0bba-2317-4504-a94c-969ccdf7d5d6	171b097d-01db-4ae8-9d56-035689402ec6	\N	Kelsey Plum	0.359	0.857	0.41
4fa92d21-9f96-4bab-a9f8-f530a69287ee	171b097d-01db-4ae8-9d56-035689402ec6	\N	Jackie Young	0.343	0.847	0.45
591fe0f5-7f76-4525-8add-870ded566c75	171b097d-01db-4ae8-9d56-035689402ec6	\N	Jessika Carter	0	0	0
6340b055-3c1b-427e-88d6-6f9cdd1fc925	171b097d-01db-4ae8-9d56-035689402ec6	\N	A'ja Wilson	0.395	0.872	0.522
8c94ae8d-4431-4e6b-98c6-dcd812ba76c8	171b097d-01db-4ae8-9d56-035689402ec6	\N	Megan Gustafson	0.286	0.778	0.469
b478ebc6-8b1f-4d39-9707-048d24a88c26	171b097d-01db-4ae8-9d56-035689402ec6	\N	Alysha Clark	0.375	0.857	0.447
c2b0bb3c-e4db-4717-bdcc-cce9745312ec	171b097d-01db-4ae8-9d56-035689402ec6	\N	Dyaisha Fair	0	0	0
ca6b54e3-612d-4523-9582-b88e675f58de	171b097d-01db-4ae8-9d56-035689402ec6	\N	Chelsea Gray	0.24	0.739	0.39
d3e817a8-9e72-44c2-a422-9d44a0b214d0	171b097d-01db-4ae8-9d56-035689402ec6	\N	Kiah Stokes	0.2	0.667	0.356
ea77addf-9b42-4d57-8669-c022f61ce2d9	171b097d-01db-4ae8-9d56-035689402ec6	\N	Kate Martin	0.396	1	0.351
f24ac568-77f4-4344-84a7-7fde145dda84	171b097d-01db-4ae8-9d56-035689402ec6	\N	Tiffany Hayes	0.333	0.75	0.49
293b5925-fd31-4640-8ada-bf6451a2c488	5d70a9af-8c2b-4aec-9e68-9acc6ddb93e4	\N	Allisha Gray	0.36	0.77	0.423
43e2f045-e419-4b6e-bf2c-45e45f4720cc	5d70a9af-8c2b-4aec-9e68-9acc6ddb93e4	\N	Jordin Canada	0.286	0.611	0.5
46719991-b25b-4b9d-a876-a2aa1dc31669	5d70a9af-8c2b-4aec-9e68-9acc6ddb93e4	\N	Lorela Cubaj	0	1	0.4
4a97e708-71e5-4d58-b1e8-883adf027925	5d70a9af-8c2b-4aec-9e68-9acc6ddb93e4	\N	Cheyenne Parker-Tyus	0.214	0.886	0.446
56dec3fc-b95f-4114-bce1-43a8077c395c	5d70a9af-8c2b-4aec-9e68-9acc6ddb93e4	\N	Destanni Henderson	0.1	0.429	0.345
58c646ba-6e6f-409a-a1cf-83e253991797	5d70a9af-8c2b-4aec-9e68-9acc6ddb93e4	\N	Nia Coffey	0.26	0.824	0.286
61181b39-2bfe-4d0d-a236-f4e8f3692fb9	5d70a9af-8c2b-4aec-9e68-9acc6ddb93e4	\N	Crystal Dangerfield	0.217	1	0.278
7797aa88-28c4-4a34-bb63-1af7f8d80ec0	5d70a9af-8c2b-4aec-9e68-9acc6ddb93e4	\N	Tina Charles	0.28	0.77	0.452
7c97d5bc-1718-4284-9d85-87f2f1b23eec	5d70a9af-8c2b-4aec-9e68-9acc6ddb93e4	\N	Haley Jones	0.261	0.676	0.411
849170da-3a64-47f6-a912-818a3feceb4c	5d70a9af-8c2b-4aec-9e68-9acc6ddb93e4	\N	Aerial Powers	0.389	0.791	0.355
a8253b50-9712-4562-8f54-e36dac6299cd	5d70a9af-8c2b-4aec-9e68-9acc6ddb93e4	\N	Laeticia Amihere	0	0.231	0.238
ab39141d-852e-4308-8b5d-8d06441ffbbd	5d70a9af-8c2b-4aec-9e68-9acc6ddb93e4	\N	Rhyne Howard	0.303	0.765	0.386
b2bb37a6-6879-4c1f-ae20-5f6492bef87a	5d70a9af-8c2b-4aec-9e68-9acc6ddb93e4	\N	Naz Hillmon	0.5	0.852	0.613
f473955f-a823-4328-92ea-6b06b68b2118	5d70a9af-8c2b-4aec-9e68-9acc6ddb93e4	\N	Maya Caldwell	0.269	0.857	0.423
0684bac6-2fe3-422c-abe4-dee434c7e3d0	f073a15f-0486-4179-b0a3-dfd0294eb595	\N	Grace Berger	0.5	0.643	0.429
28361fd5-c935-4025-a709-2c488f53ed8c	f073a15f-0486-4179-b0a3-dfd0294eb595	\N	Erica Wheeler	0.235	0.889	0.404
29a8b1d2-db3b-4035-a635-9d559bc51a8a	f073a15f-0486-4179-b0a3-dfd0294eb595	\N	Katie Lou Samuelson	0.341	0.95	0.38
2d21f497-2795-432d-b254-5ae9fbbd0096	f073a15f-0486-4179-b0a3-dfd0294eb595	\N	Caitlin Clark	0.327	0.891	0.405
3ca3a177-b874-44dc-ba24-b62118de7573	f073a15f-0486-4179-b0a3-dfd0294eb595	\N	Kristy Wallace	0.264	0.625	0.38
5219e39b-9341-4dfb-a43c-793723729162	f073a15f-0486-4179-b0a3-dfd0294eb595	\N	Kelsey Mitchell	0.368	0.811	0.443
63dde7d8-0af8-4adb-a556-01e0d2395420	f073a15f-0486-4179-b0a3-dfd0294eb595	\N	Aliyah Boston	0.412	0.681	0.532
6a32c622-278c-4c75-b83f-345bcd252ab4	f073a15f-0486-4179-b0a3-dfd0294eb595	\N	Temi Fagbenle	0.167	0.9	0.544
732bf79f-1bfa-450c-ad04-015f7624765a	f073a15f-0486-4179-b0a3-dfd0294eb595	\N	NaLyssa Smith	0.343	0.593	0.492
7b9735ad-eaaa-4873-bdae-bf5a56f30d3c	f073a15f-0486-4179-b0a3-dfd0294eb595	\N	Celeste Taylor	0	0.5	1
dc34b957-189f-4eb4-b7fc-0da87e271275	f073a15f-0486-4179-b0a3-dfd0294eb595	\N	Lexie Hull	0.281	0.8	0.338
e040354c-4d44-405c-a7ac-d4d2cf9062e8	f073a15f-0486-4179-b0a3-dfd0294eb595	\N	Damiris Dantas	0.5	0	0.75
fcd7ed30-8a73-4430-88c0-d1f4330bb84e	f073a15f-0486-4179-b0a3-dfd0294eb595	\N	Victaria Saxton	0	0.5	0.25
028cb8d4-48c1-4d44-9436-8796ecbad4a4	08ed8274-e29f-4248-bc2e-83cc8ed18d75	\N	Ivana Dojkic	0.382	0.739	0.327
06e88c3f-715d-41b2-9aee-6a013a37565f	08ed8274-e29f-4248-bc2e-83cc8ed18d75	\N	Kennedy Burke	0.265	0.75	0.392
1359b409-f610-4d01-9867-58aca845b2da	08ed8274-e29f-4248-bc2e-83cc8ed18d75	\N	Nyara Sabally	0	0.8	0.6
2199ae2c-7588-4610-9deb-a1b5e8025d43	08ed8274-e29f-4248-bc2e-83cc8ed18d75	\N	Sabrina Ionescu	0.357	0.909	0.425
3d0a61e8-8f8f-48a8-bfa3-d9c3171c819f	08ed8274-e29f-4248-bc2e-83cc8ed18d75	\N	Betnijah Laney-Hamilton	0.38	0.884	0.469
6fa763e6-846f-4f9d-a4ce-256d8b328424	08ed8274-e29f-4248-bc2e-83cc8ed18d75	\N	Breanna Stewart	0.229	0.869	0.454
7a46f116-94ed-4d89-b585-fa41cf41862c	08ed8274-e29f-4248-bc2e-83cc8ed18d75	\N	Kayla Thornton	0.388	0.818	0.406
836cd047-874a-464b-9d20-20491fbc8046	08ed8274-e29f-4248-bc2e-83cc8ed18d75	\N	Marquesha Davis	1	0.6	0.417
8a438358-fbe0-4797-921f-add82eddf789	08ed8274-e29f-4248-bc2e-83cc8ed18d75	\N	Jonquel Jones	0.392	0.778	0.555
b61d82ac-3726-4e9a-a7ed-d2c1ade14fa2	08ed8274-e29f-4248-bc2e-83cc8ed18d75	\N	Jaylyn Sherrod	0	0	0
b61f397f-0cb5-49db-9e88-f91991757203	08ed8274-e29f-4248-bc2e-83cc8ed18d75	\N	Courtney Vandersloot	0.265	0.467	0.459
fd9c6f75-0468-4b52-a3f7-6f70d1d658c6	08ed8274-e29f-4248-bc2e-83cc8ed18d75	\N	Leonie Fiebich	0.383	0.692	0.414
032ba7d1-7430-4a82-9e28-6f340023833f	6f017f37-be96-4bdc-b6d3-0a0429c72e89	\N	Alissa Pili	0.318	0.571	0.412
17ba31ce-0f0f-40d1-bd9a-58f51668186e	6f017f37-be96-4bdc-b6d3-0a0429c72e89	\N	Sika Kone	0	0.778	0.412
21f994d2-1cc9-4d83-b278-abc3aaf4f63d	6f017f37-be96-4bdc-b6d3-0a0429c72e89	\N	Napheesa Collier	0.316	0.792	0.468
43135c04-f4c8-490d-ad59-0eb2e9f2f6cf	6f017f37-be96-4bdc-b6d3-0a0429c72e89	\N	Natisha Hiedeman	0.204	0.708	0.361
45e35318-295a-4e1c-bfc6-c7b295ed5066	6f017f37-be96-4bdc-b6d3-0a0429c72e89	\N	Courtney Williams	0.318	0.774	0.396
8d2ac434-4179-4839-a109-e306fd4b4ba1	6f017f37-be96-4bdc-b6d3-0a0429c72e89	\N	Olivia Epoupa	0	1	0.4
92b50919-8c76-4fcf-ab2e-9497f135f27c	6f017f37-be96-4bdc-b6d3-0a0429c72e89	\N	Cecilia Zandalasini	0.469	0.636	0.441
96ebdfad-3ffa-4a02-9990-75977d7c94a1	6f017f37-be96-4bdc-b6d3-0a0429c72e89	\N	Alanna Smith	0.436	0.754	0.477
a4d323e8-eea6-49b4-91f2-7edd99b2fa68	6f017f37-be96-4bdc-b6d3-0a0429c72e89	\N	Dorka Juhasz	0.292	0.583	0.496
b404562d-a1fd-446f-bcd0-6b545dfde9c6	6f017f37-be96-4bdc-b6d3-0a0429c72e89	\N	Kayla McBride	0.427	0.915	0.444
d851048b-0415-4678-9f9a-f49cc03ae802	6f017f37-be96-4bdc-b6d3-0a0429c72e89	\N	Diamond Miller	0.188	0.571	0.293
e7ebed4e-04c2-4d1d-ac04-1cc9a9f56724	6f017f37-be96-4bdc-b6d3-0a0429c72e89	\N	Taylor Soule	0	0	0
f41354b6-c59e-4f29-abf3-f3cff87ed231	6f017f37-be96-4bdc-b6d3-0a0429c72e89	\N	Bridget Carleton	0.435	0.833	0.426
03e541cb-d11c-4975-b656-f6e7febcda7d	0699edf3-5993-4182-b9b4-ec935cbd4fcc	\N	Brittney Griner	0.4	0.815	0.558
20bc3af4-52f9-4d5e-8247-2a62d77c143b	0699edf3-5993-4182-b9b4-ec935cbd4fcc	\N	Sug Sutton	0.257	0.692	0.3
387dfc5a-548c-4afd-a5a6-ff7059535818	0699edf3-5993-4182-b9b4-ec935cbd4fcc	\N	Mikiah Herbert Harrigan	0.297	0.385	0.357
4e1ddd46-60f7-4307-a548-508c1ed6c136	0699edf3-5993-4182-b9b4-ec935cbd4fcc	\N	Natasha Mack	0	0.75	0.558
5c98ad4b-5c4e-41a4-b623-c3e25823967b	0699edf3-5993-4182-b9b4-ec935cbd4fcc	\N	Charisma Osborne	0	0	0.5
6434f048-1c61-4a79-a990-73f51f46245e	0699edf3-5993-4182-b9b4-ec935cbd4fcc	\N	Kahleah Copper	0.331	0.817	0.454
6f20a6c1-04f6-4be2-b7a2-511ebe314525	0699edf3-5993-4182-b9b4-ec935cbd4fcc	\N	Sophie Cunningham	0.392	0.854	0.434
7b9735ad-eaaa-4873-bdae-bf5a56f30d3c	0699edf3-5993-4182-b9b4-ec935cbd4fcc	\N	Celeste Taylor	0	0.5	0.25
9848c81d-efc7-4927-bc18-98fd0e50c761	0699edf3-5993-4182-b9b4-ec935cbd4fcc	\N	Rebecca Allen	0.357	0.667	0.421
9fb2a552-54f7-4299-9748-341c322fe566	0699edf3-5993-4182-b9b4-ec935cbd4fcc	\N	Morgan Bertsch	0.143	0.875	0.222
cd8f3488-ec13-4727-9d3d-7b472c4ac7f1	0699edf3-5993-4182-b9b4-ec935cbd4fcc	\N	Liz Dixon	0	0.8	0.379
d9bce234-085d-4b85-be5f-9b7020b82e69	0699edf3-5993-4182-b9b4-ec935cbd4fcc	\N	Diana Taurasi	0.363	0.872	0.401
f2c36797-b5c5-47a4-b073-43637c9794ef	0699edf3-5993-4182-b9b4-ec935cbd4fcc	\N	Natasha Cloud	0.296	0.802	0.427
06e3bb10-73ab-4d8e-8ad4-6850ea710b30	5c0d47fe-8539-47b0-9f36-d0b3609ca89b	\N	Brittney Sykes	0.364	1	0.467
111c118b-ba4d-4a6e-b449-f858bee28b5e	5c0d47fe-8539-47b0-9f36-d0b3609ca89b	\N	DiDi Richards	0	0.429	0.4
15f0b384-7c91-463e-9ae8-fa73d549f23a	5c0d47fe-8539-47b0-9f36-d0b3609ca89b	\N	Julie Vanloo	0.34	0.727	0.352
2861dedc-439b-4fbb-bc50-1873b498dc52	5c0d47fe-8539-47b0-9f36-d0b3609ca89b	\N	Ariel Atkins	0.344	0.805	0.424
2f1df065-07de-478f-9b37-76546561d8c2	5c0d47fe-8539-47b0-9f36-d0b3609ca89b	\N	Aaliyah Edwards	0	0.682	0.49
3762be5d-d392-4e3b-aea3-9c5e356c7486	5c0d47fe-8539-47b0-9f36-d0b3609ca89b	\N	Shatori Walker-Kimbrough	0.354	0.776	0.396
3f194c01-8933-4160-928b-93c416002d6f	5c0d47fe-8539-47b0-9f36-d0b3609ca89b	\N	Jade Melbourne	0.313	0.774	0.425
776e2238-8340-4425-ab90-ba69e1bc7441	5c0d47fe-8539-47b0-9f36-d0b3609ca89b	\N	Stefanie Dolson	0.485	0.774	0.494
7aab70d6-2179-4389-a30e-e3da9c6a1713	5c0d47fe-8539-47b0-9f36-d0b3609ca89b	\N	Karlie Samuelson	0.368	1	0.397
7c76cfae-0b68-4449-9a96-73d271fbc32e	5c0d47fe-8539-47b0-9f36-d0b3609ca89b	\N	Emily Engstler	0.4	0.867	0.441
8302ef7b-466b-42f0-bdae-d87d8d56154a	5c0d47fe-8539-47b0-9f36-d0b3609ca89b	\N	Myisha Hines-Allen	0.378	0.818	0.503
a8e64df8-bd27-4c28-94c9-7c1c370960dc	5c0d47fe-8539-47b0-9f36-d0b3609ca89b	\N	Shakira Austin	0.5	0.708	0.394
d84cff69-07e0-4df7-9caa-72f9446f4b89	5c0d47fe-8539-47b0-9f36-d0b3609ca89b	\N	Jakia Brown-Turner	0	1	0
184cc47d-af49-47fb-bcec-c0df1de4813f	3c409388-ab73-4c7f-953d-3a71062240f6	\N	Isabelle Harrison	0.25	0.833	0.405
36211055-b368-4e99-97f2-7080386db4d5	3c409388-ab73-4c7f-953d-3a71062240f6	\N	Marina Mabrey	0.348	0.723	0.381
3c606b9a-c914-4e6f-ac4f-81b2600f7755	3c409388-ab73-4c7f-953d-3a71062240f6	\N	Dana Evans	0.354	0.973	0.366
433a5b0e-6b9c-448c-a8f7-33c5849bb6f1	3c409388-ab73-4c7f-953d-3a71062240f6	\N	Brianna Turner	0	0.5	0.625
4d70f9da-972d-4903-b9e5-d4d4aaa0a91d	3c409388-ab73-4c7f-953d-3a71062240f6	\N	Michaela Onyenwere	0.45	0.556	0.41
4fcc19db-1149-4081-9313-e3c2b24ae170	3c409388-ab73-4c7f-953d-3a71062240f6	\N	Angel Reese	0.2	0.76	0.402
63b305c4-1d47-4e3e-91ac-9a529fd4c851	3c409388-ab73-4c7f-953d-3a71062240f6	\N	Chennedy Carter	0.2	0.753	0.518
6cd13b60-2d3f-48d6-9474-3147233bf5e3	3c409388-ab73-4c7f-953d-3a71062240f6	\N	Lindsay Allen	0.25	0.741	0.462
a1372723-dc8c-45c9-a160-890f80b985ab	3c409388-ab73-4c7f-953d-3a71062240f6	\N	Kamilla Cardoso	0	0.622	0.462
a68b7b43-102e-44a1-96e9-e1615cc0f1b2	3c409388-ab73-4c7f-953d-3a71062240f6	\N	Diamond DeShields	0.184	0.696	0.324
bdacf12c-92b4-4f73-9123-7e86e87e3bc5	3c409388-ab73-4c7f-953d-3a71062240f6	\N	Kysre Gondrezick	0.167	0	0.286
c8672dba-0deb-4cf1-8304-82365865edaa	3c409388-ab73-4c7f-953d-3a71062240f6	\N	Elizabeth Williams	0	0.667	0.487
0add970b-86eb-4149-aac2-5a03664938bc	0a5ad38d-2fe3-43ba-894b-1ba3d5042ea9	\N	Zia Cooke	0.259	0.714	0.295
155215e8-3e76-49cd-b00a-e0d9a124ec7f	0a5ad38d-2fe3-43ba-894b-1ba3d5042ea9	\N	Lexie Brown	0.304	0.889	0.321
1ed5a0c9-ad93-4996-acca-94c7e301bb79	0a5ad38d-2fe3-43ba-894b-1ba3d5042ea9	\N	Azura Stevens	0.533	1	0.512
2950ae7e-044f-4580-9c18-1593aa3ff48e	0a5ad38d-2fe3-43ba-894b-1ba3d5042ea9	\N	Rae Burrell	0.368	0.833	0.338
55cbf5b3-3dfb-447b-b661-d9ccbf601066	0a5ad38d-2fe3-43ba-894b-1ba3d5042ea9	\N	Cameron Brink	0.323	0.84	0.398
61181b39-2bfe-4d0d-a236-f4e8f3692fb9	0a5ad38d-2fe3-43ba-894b-1ba3d5042ea9	\N	Crystal Dangerfield	0	1	0
612e128c-c5b3-4ce0-a131-ce4d10f4f7ff	0a5ad38d-2fe3-43ba-894b-1ba3d5042ea9	\N	Aari McDonald	0.315	0.843	0.406
693b6941-8999-40bb-a3a2-b77c34f1dc78	0a5ad38d-2fe3-43ba-894b-1ba3d5042ea9	\N	Dearica Hamby	0.404	0.612	0.52
779cd8d9-133e-4e68-8bfb-16a437a34686	0a5ad38d-2fe3-43ba-894b-1ba3d5042ea9	\N	Stephanie Talbot	0.357	0.706	0.463
9659fad4-96be-46ab-9fc7-cec258570e5d	0a5ad38d-2fe3-43ba-894b-1ba3d5042ea9	\N	Queen Egbo	0	0	1
b77b40a2-5844-48c0-bae2-5067516b2acf	0a5ad38d-2fe3-43ba-894b-1ba3d5042ea9	\N	Layshia Clarendon	0.35	0.87	0.432
ba416583-7ac2-4156-b708-253712fcefe5	0a5ad38d-2fe3-43ba-894b-1ba3d5042ea9	\N	Rickea Jackson	0.317	0.766	0.45
bfe1fd30-eac0-4881-a23a-902c706e9ad1	0a5ad38d-2fe3-43ba-894b-1ba3d5042ea9	\N	Li Yueru	0.333	0.875	0.493
c0d2573a-fc13-405d-bb9e-cc37552806ed	0a5ad38d-2fe3-43ba-894b-1ba3d5042ea9	\N	Kia Nurse	0.304	0.769	0.355
0825c65d-b903-4dd3-8206-e5f7d31bb2b8	d6a012ed-84aa-48d3-8265-2d3f3ff2199a	\N	Jewell Loyd	0.261	0.869	0.362
1db3458a-8ac3-4939-95bb-5c74f478e18c	d6a012ed-84aa-48d3-8265-2d3f3ff2199a	\N	Mercedes Russell	0	0.55	0.576
36dd41a1-a258-49a2-b728-8b9a22708631	d6a012ed-84aa-48d3-8265-2d3f3ff2199a	\N	Nika Muhl	0	0	0
4dbce5c1-af4c-4bc0-8ffb-8cbaf77b5652	d6a012ed-84aa-48d3-8265-2d3f3ff2199a	\N	Victoria Vivians	0.375	0.75	0.364
62b9a043-7510-4e53-8666-e14602bdbd49	d6a012ed-84aa-48d3-8265-2d3f3ff2199a	\N	Joyner Holmes	0.267	0.5	0.5
750b9212-d2d0-414d-929e-1c658dc13999	d6a012ed-84aa-48d3-8265-2d3f3ff2199a	\N	Kiana Williams	0.333	0	0.25
7c9b7ef1-edd2-4f69-a627-f321d662365d	d6a012ed-84aa-48d3-8265-2d3f3ff2199a	\N	Skylar Diggins-Smith	0.273	0.859	0.393
7ff950fc-3872-4d7c-84ce-db06ebe42123	d6a012ed-84aa-48d3-8265-2d3f3ff2199a	\N	Ezi Magbegor	0.243	0.895	0.506
82661dca-4121-4f2c-9918-7960ae068b83	d6a012ed-84aa-48d3-8265-2d3f3ff2199a	\N	Sami Whitcomb	0.306	0.889	0.351
8366e375-3316-44e9-b160-201a5de295b5	d6a012ed-84aa-48d3-8265-2d3f3ff2199a	\N	Dulcy Fankam Mendjiadeu	0	0.333	0.667
e49da6d1-dd65-44f9-9a5f-d60010d8c384	d6a012ed-84aa-48d3-8265-2d3f3ff2199a	\N	Nneka Ogwumike	0.41	0.843	0.524
e6959e8f-c586-4eae-bbc9-edd761e78321	d6a012ed-84aa-48d3-8265-2d3f3ff2199a	\N	Jordan Horston	0.27	0.71	0.491
100f94c5-3a62-4300-98bb-fe587522c2a6	a015b02d-845c-40c1-8ef4-844984f47e4d	\N	Tiffany Mitchell	0.25	0.783	0.349
30d46238-d1eb-476d-a526-4e2203474106	a015b02d-845c-40c1-8ef4-844984f47e4d	\N	Rachel Banham	0.348	0.9	0.358
3c7bca56-df7a-4a7f-9a2e-481c474e701d	a015b02d-845c-40c1-8ef4-844984f47e4d	\N	Astou Ndour-Fall	0.222	1	0.35
4009ca08-3b81-4190-9b13-c08ddb8090a5	a015b02d-845c-40c1-8ef4-844984f47e4d	\N	Veronica Burton	0.294	0.75	0.406
564b47ed-ae1e-442b-b949-82164f36b079	a015b02d-845c-40c1-8ef4-844984f47e4d	\N	Moriah Jefferson	0.333	1	0.375
87a32879-a19b-4603-86ce-1c8b0e4484ad	a015b02d-845c-40c1-8ef4-844984f47e4d	\N	Alyssa Thomas	0	0.647	0.52
9659fad4-96be-46ab-9fc7-cec258570e5d	a015b02d-845c-40c1-8ef4-844984f47e4d	\N	Queen Egbo	0	1	0
96f429a5-5b23-4edf-90b1-642d7f036118	a015b02d-845c-40c1-8ef4-844984f47e4d	\N	Tyasha Harris	0.351	0.761	0.411
a4610f86-6674-4893-9a2a-bcbcf77d5650	a015b02d-845c-40c1-8ef4-844984f47e4d	\N	Olivia Nelson-Ododa	0	0.611	0.5
b262f7f1-1c78-406c-86aa-7ad15122931f	a015b02d-845c-40c1-8ef4-844984f47e4d	\N	DeWanna Bonner	0.312	0.822	0.431
d4c299a9-e271-4552-9ed2-2fc285c30362	a015b02d-845c-40c1-8ef4-844984f47e4d	\N	DiJonai Carrington	0.288	0.813	0.395
de11f82d-035c-45c2-873a-eb1fad4abc1b	a015b02d-845c-40c1-8ef4-844984f47e4d	\N	Brionna Jones	0.2	0.74	0.53
0be5a2ab-6448-4e9e-89ff-8d8bfa91f037	5f0b5caf-708b-4300-92f2-53b51d83ec06	\N	Lou Lopez Senechal	0.231	1	0.296
0c6ce2db-d4e6-49cc-8490-78a6842026f2	5f0b5caf-708b-4300-92f2-53b51d83ec06	\N	Jacy Sheldon	0.373	0.9	0.425
206872ae-560b-4199-94f4-a44106b0baff	5f0b5caf-708b-4300-92f2-53b51d83ec06	\N	Monique Billings	0.143	0.804	0.475
357ea521-789b-4d23-a7ad-f4f539c0d824	5f0b5caf-708b-4300-92f2-53b51d83ec06	\N	Satou Sabally	0	0	0
46479ac7-5745-40d2-abc8-7c660ea759e4	5f0b5caf-708b-4300-92f2-53b51d83ec06	\N	Natasha Howard	0.214	0.735	0.457
495f97d5-caf7-48ef-b167-494c47755586	5f0b5caf-708b-4300-92f2-53b51d83ec06	\N	Stephanie Soares	0.182	1	0.313
50eab91c-a616-4b89-832e-e17ac12708a8	5f0b5caf-708b-4300-92f2-53b51d83ec06	\N	Odyssey Sims	0.5	0.654	0.535
6109be30-a0ce-4c7a-8eef-20fc8ceac1f2	5f0b5caf-708b-4300-92f2-53b51d83ec06	\N	Kalani Brown	0	0.625	0.585
7198b1c2-005e-46b1-a4f6-cb362983c7a1	5f0b5caf-708b-4300-92f2-53b51d83ec06	\N	Jaelyn Brown	0	0	0
88429de7-5dc4-471a-98cd-bc13b057db36	5f0b5caf-708b-4300-92f2-53b51d83ec06	\N	Maddy Siegrist	0.29	0.792	0.523
9fb2a552-54f7-4299-9748-341c322fe566	5f0b5caf-708b-4300-92f2-53b51d83ec06	\N	Morgan Bertsch	0	0.5	0
b6d346c5-f9dc-4217-96a3-5e0f2a732b04	5f0b5caf-708b-4300-92f2-53b51d83ec06	\N	Sevgi Uzun	0.246	0.824	0.356
b84a83b9-07b1-4115-b2ad-8cb69a96ef08	5f0b5caf-708b-4300-92f2-53b51d83ec06	\N	Arike Ogunbowale	0.34	0.908	0.357
db3ec44f-708c-4853-af9a-fc7c04407366	5f0b5caf-708b-4300-92f2-53b51d83ec06	\N	Teaira McCowan	0.25	0.694	0.565
\.


--
-- Data for Name: team; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.team (team_name, team_id, team_3pt_pct, team_ft_pct, team_fg_pct) FROM stdin;
Aces	171b097d-01db-4ae8-9d56-035689402ec6	0.348	0.839	0.454
Dream	5d70a9af-8c2b-4aec-9e68-9acc6ddb93e4	0.303	0.769	0.411
Fever	f073a15f-0486-4179-b0a3-dfd0294eb595	0.33	0.766	0.448
Liberty	08ed8274-e29f-4248-bc2e-83cc8ed18d75	0.347	0.83	0.453
Lynx	6f017f37-be96-4bdc-b6d3-0a0429c72e89	0.384	0.785	0.436
Mercury	0699edf3-5993-4182-b9b4-ec935cbd4fcc	0.336	0.807	0.44
Mystics	5c0d47fe-8539-47b0-9f36-d0b3609ca89b	0.367	0.771	0.43
Sparks	0a5ad38d-2fe3-43ba-894b-1ba3d5042ea9	0.33	0.762	0.425
Storm	d6a012ed-84aa-48d3-8265-2d3f3ff2199a	0.292	0.832	0.434
Sun	a015b02d-845c-40c1-8ef4-844984f47e4d	0.314	0.76	0.438
Wings	5f0b5caf-708b-4300-92f2-53b51d83ec06	0.317	0.787	0.445
BAYLEEBROOK	644e4567-e89b-12d3-a456-426614174000	0.5	0.6	0.7
Brook Baylee	3c409388-ab73-4c7f-953d-3a71062240f6	0.314	0.751	0.425
\.


--
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


--
-- Name: team team_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.team
    ADD CONSTRAINT team_pkey PRIMARY KEY (team_name);


--
-- PostgreSQL database dump complete
--

